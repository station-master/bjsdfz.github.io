#include<string>
#include<iostream>
#include<fstream>
#include<sstream>
#include<map>
#include<vector>
#include <algorithm>
#include<windows.h>
using namespace std;
map<int,int> snums;
int sti(string s)
{
	stringstream ss;
	ss<<s;
	int out;
	ss>>out;
	return out;
}
string its(int i)
{
	stringstream ss;
	ss<<i;
	string out;
	ss>>out;
	return out;
}
bool isint(string s)
{
	for(int i=0;i<s.size();i++)
	{
		if(!(s[i]>='0'&&s[i]<='9'))
		{
			return 0;
		}
	}
	return 1;
 } 
string reset(string s,char b,char a)
{
	for(int i=0;i<s.size();i++)
	{
		if(s[i]==b)
		{
			s[i]=a;
		}
	}
	return s;
}
void out(int times,int perfect,int good,int combo,int mc,map<int,string> map,ostream&output)
{
	if(times==1&&map[mc]!="")
	{
		output<<map[mc]<<endl;
	}
	output<<times<<".perfect:"<<perfect<<" good:"<<good<<" combo:"<<combo;
	output<<endl;
}
void out(int times,int perfect,int good,int mc,map<int,string> map,ostream&output)
{
	if(times==1&&map[mc]!="")
	{
		output<<map[mc]<<endl;
	}
	output<<times<<".perfect:"<<perfect<<" good:"<<good;
	output<<endl;
}
void read(vector<int> &all,map<int,string> &map,istream& input)
{
	string name,check;
	int tmp;
	if(input.good())
	{
		while(input>>name)
		{
			name=reset(name,'$',' ');
			vector<string> difficulties;
			while(input>>check)
			{
				if(!isint(check))
				{
					difficulties.push_back(name+string(":")+check);
				}
				else
				{
					tmp=sti(check);
					for(int i=0;i<difficulties.size();i++)
					{
						if(find(all.begin(), all.end(),tmp)==all.end())
						{
							snums[tmp]=1;
							all.push_back(tmp);
							map[tmp]=difficulties[i]; 
						}
						else
						{
							snums[tmp]++;
							map[tmp]+=string(",")+difficulties[i];
						}
						if(i+1<difficulties.size())
						{
							input>>tmp;
						}
					}
					break;
				}
			}
		} 
		sort(all.begin(),all.end());
	}
	else
	{
		return;
	}
}
bool counting(int score,map<int,string> map,vector<int> all,string filename,bool q=1)
{
	ofstream os; 
	bool result=1;
	bool f=1,kf=1;
	int perfect=0,good=0,combo=0,times=0,snum=0,cnum=0;
	os.open((string("课题模式")+filename).data());
	for(int i=0;i<all.size();i++)
	{
		perfect=0;
		if(score>650000)
		{ 
			perfect=(score-650000)/(350000.0/all[i]);
		} 
		for(;perfect<=all[i];perfect++)
		{
			if(perfect*(1000000.0/all[i])-1>score)
			{
				break;
			}
			for(good=0;good<=all[i]-perfect;good++)
			{
				if(perfect*1000000.0/all[i]+good*650000.0/all[i]-1>score)
				{
					break;
				}
				if((int)((perfect+0.65*good)*1000000/all[i]+0.5)==score)
				{
					cnum++;
					result=0;
					f=0;
					kf=0;
					times++;
					out(times,perfect,good,all[i],map,os);
					break;
				}
			}
		}
		if(f==0)
		{
			snum+=snums[all[i]];
			os<<endl;
			f=1;
		 } 
		times=0;
	}
	if(kf)
	{
		os<<"无结果\n";
	}
	else
	{
		if(q)
		os<<"共有"<<snum<<"个可以达到"<<score<<"分的谱面,";
		os<<"共"<<cnum<<"种可行方法"; 
	}
	os.close();
	os.clear();
	kf=1;
	f=1;
	snum=0;
	cnum=0;
	os.open((string("普通模式")+filename).data());
	for(int i=0;i<all.size();i++)
	{
		perfect=0;
		if(score>650000*0.9+100000)
		{ 
			perfect=(score-(650000*0.9+100000))/(350000*0.9/combo);
		} 
		for(;perfect<=all[i];perfect++)
		{
			if(perfect*900000.0/combo-1>score)
			{
				break;
			}
			for(good=0;good<=all[i]-perfect;good++)
			{
				if(perfect*900000.0/all[i]+good*650000*0.9/all[i]-1>score)
				{
					break;
				}
				for(combo=(good+perfect)/(all[i]-good-perfect+1);combo<=perfect+good;combo++)
				{
					if((good+perfect)%(all[i]-good-perfect+1)!=0)
					{
						combo++;
					}
					if((int)((0.9*(perfect+0.65*good)+0.1*combo)*1000000/all[i]+0.5)==score)
					{
						cnum++;
						result=0;
						kf=0;
						f=0;
						times++;
						out(times,perfect,good,combo,all[i],map,os);
						break;
					}
				}
			}
		} 
		if(f==0)
		{
			snum+=snums[all[i]];
			os<<endl;
			f=1;
		 } 	
		times=0;
	} 
	if(kf)
	{
		os<<"无结果\n";
	}
	else
	{
		if(q)
		os<<"共有"<<snum<<"个可以达到"<<score<<"分的谱面,";
		os<<"共"<<cnum<<"种可行方法"; 
	}
	return result;
}
int main()
{
	ifstream input;
	vector<int> d_all,u_all;
	map<int,string> d_map,u_map;
	input.open("defult.pg");
	read(d_all,d_map,input);
	input.close();
	input.clear();
	input.open("users.pg");
	if(input.good())
	read(u_all,u_map,input);
	input.close();
	input.clear();
	ofstream output;
	string mod;
	while(1)
	{
		cout<<"欢迎使用phigros控分计算器！\n计算器作者：音游界的卤逊\n";
		cout<<"sr 1 to start jishuan";
		cin>>mod; 
		switch(sti(mod))
		{
			case(1):
			{
				int start;
				int end;
				cout << "start";
				cin >> start;
				cout << "end";
				cin >> end;
				cout<<"计算中\n"; 


				

				for(int fuck=start;fuck< end;fuck=fuck+1){
					bool f = 0;
					cout << its(fuck) + string("az");
					string filename = string(",分数=") + its(fuck) + string(".txt");
					f+=counting(fuck,u_map,u_all,filename);
					f+=counting(fuck,d_map,d_all,filename);
				}
				cout<<"计算完成"; 
				Sleep(500);
				break;
			}
			case(2):
			{
				int mc,score;
				cout<<"请输入物量:";
				cin>>mc;
				cout<<"请输入目标分数:";
				cin>>score;
				cout<<"计算中\n"; 
				vector<int> t_all;
				map<int,string> t_map;
				t_all.push_back(mc);
				t_map[mc]="";
				string filename;
				filename=string("物量=")+its(mc)+string(",分数=")+its(score)+string(".txt");
				counting(score,t_map,t_all,filename,0);
				cout<<"计算完成"; 
				Sleep(500);
				break;
			}
			case(3):
			{
				output.open("users.pg",ios_base::app|ios_base::out);
				string name,difficulty,mc;
				vector<string> d,m;
				cout<<"请输入谱面名称：";
				cin.get();
				getline(cin,name);
				name=reset(name,'$','\0');
				name=reset(name,' ','$');
				cout<<"请输入难度及物量(格式:难度1 物量1 难度2 物量2... ,以end作为结尾 例：EZ 66 HD 106 SP 250 end)\n";
				while(1)
				{
					bool ok=1;
					cin>>difficulty;
					if(difficulty!="end")
					{
						cin>>mc;
						if(!(isint(mc)&&sti(mc)>0))
						{
							ok=0;
							cout<<"物量必须是大于0的整数\n"; 
						}
						if(isint(difficulty))
						{
							ok=0;
							cout<<"难度不能为纯数字\n"; 
						}
						if(!ok)
						{
							cout<<"错误输入已被忽略\n";
							continue;
						}
						else
						{
							d.push_back(difficulty);
							m.push_back(mc);
						}
					}
					else
					{
						break;
					}
				}
				output<<name<<"\n";
				for(int i=0;i<d.size();i++)
				{
					output<<"\t"<<d[i];
				}
				output<<endl;
				for(int i=0;i<d.size();i++)
				{
					output<<"\t"<<m[i];
				}
				output<<"\n";
				output.close();
				output.clear();
				u_map.clear();
				u_all.clear();
				input.open("users.pg");
				read(u_all,u_map,input);
				input.close();
				input.clear();
				cout<<"添加完成";
				Sleep(500);
				break;
			}
			case(4):
			{
				return 0;
			} 
		}
		system("cls");
	}
	return 0;
}
