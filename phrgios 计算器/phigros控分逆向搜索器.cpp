#include<string>
#include<iostream>
#include<fstream>
#include<sstream>
#include<map>
#include<vector>
#include <algorithm>
#include<windows.h>
using namespace std;
int string_to_int(string s)
{
	stringstream ss;
	ss<<s;
	int out;
	ss>>out;
	return out;
}
//把完全由数字组成的字符串转换成数字 


string int_to_string(int i)//把数字转换成字符串 
{
	stringstream ss;
	ss<<i;
	string out;
	ss>>out;
	return out;
}


bool is_int(string s)
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
 //判断一个字符串是否完全由数字组成 
 
  
string reset(string s,char a,char b)
{
	for(int i=0;i<s.size();i++)
	{
		if(s[i]==a)
		{
			s[i]=b;
		}
	}
	return s;
}
//把一个字符串中的所有字符a替换为字符b 


void out(int times,int perfect,int good,int combo,int maxcombo,map<int,string> map,ostream&output)
{
	if(times==1&&map[maxcombo]!="")
	{
		output<<map[maxcombo]<<endl;
	}
	output<<times<<".perfect:"<<perfect<<" good:"<<good<<" combo:"<<combo;
	output<<endl;
}
void out(int times,int perfect,int good,int maxcombo,map<int,string> map,ostream&output)
{
	if(times==1&&map[maxcombo]!="")
	{
		output<<map[maxcombo]<<endl;
	}
	output<<times<<".perfect:"<<perfect<<" good:"<<good;
	output<<endl;
}
//上面两个out函数向文件里输出，分别是课题模式和普通模式 


void read(vector<int> &all_nums,map<int,string> &namemap,istream& input)
{
	string name,check;
	int tmp;
	if(input.good())
	{
		while(input>>name)//每次从data中读取一个曲名
		{
			name=reset(name,'$',' ');
			vector<string> difficulties;
			while(input>>check)//每次从data中读取一次难度
			{
				if(!is_int(check))//检查读取到的是否是代表难度的字符 
				{
					difficulties.push_back(name+string(":")+check);//若是则在列表中记录 
				}
				else//若不是则开始读取物量 
				{
					tmp=string_to_int(check);
					for(int i=0;i<difficulties.size();i++)
					{
						if(find(all_nums.begin(), all_nums.end(),tmp)==all_nums.end())//检查之前是否有重复的物量 
						{
							all_nums.push_back(tmp);//若没有重复的物量就把本次物量加入到出现过的物量中 
							namemap[tmp]=difficulties[i];
						}
						else
						{
							namemap[tmp]+=string(",")+difficulties[i];
						}
						if(i+1<difficulties.size())// 若下次循环时有对应难度就读取一个物量 
						{
							input>>tmp;
						}
					}
					break;//结束这个循环 
				}
			}
		} 
		sort(all_nums.begin(),all_nums.end());
	}
	else
	{
		return;
	}
}
//读取物量表信息



bool counting(int score,map<int,string> map,vector<int> all_nums,string filename)
{
	ofstream os; 
	bool result=0;//课题模式和普通模式至少一个有结果则值为true，作为函数返回值 
	bool f=0;//每一个物量是否有结果 
	bool k_result=0;//课题模式或普通模式是否有结果 
	int perfect=0,good=0,combo=0,times=0;
	os.open((string("课题模式")+filename).data());
	for(int i=0;i<all_nums.size();i++)//如果物量不是0就判断 
	{
		perfect=0;
		if(score>650000)//设定最小perfect减少循环次数 
		{ 
			perfect=(score-650000)/(350000.0/all_nums[i]);
		} 
		for(;perfect<=all_nums[i];perfect++)//遍历所有情况 
		{
			if(perfect*(1000000.0/all_nums[i])-1>score)//判断当前perfect数最低得分是否超过目标分 
			{
				break;//若是则结束循环 
			}
			for(good=0;good<=all_nums[i]-perfect;good++)//遍历当前perfect数的所有good数的可能情况 
			{
				if(perfect*1000000.0/all_nums[i]+good*650000.0/all_nums[i]-1>score)//判断当前perfect、good数最低得分是否超过目标分 
				{
					break;//若是则结束循环 
				}
				if((int)((perfect+0.65*good)*1000000/all_nums[i]+0.5)==score)//判断是否是目标分数 
				{
					result=1;
					f=1;
					k_result=1;
					times++;
					out(times,perfect,good,all_nums[i],map,os);
					break;
				}
			}
		}
		if(f)//如果当前物量有结果就换行 
		{
			os<<endl;
			f=0;
		 } 
		times=0;
	}
	if(!k_result)
	{
		os<<"无结果\n";
	}
	os.close();
	os.clear();
	k_result=0;
	f=0;
	os.open((string("普通模式")+filename).data());
	for(int i=0;i<all_nums.size();i++)//如果物量不是0就判断 
	{
		perfect=0;
		if(score>650000*0.9+100000)//同上 
		{ 
			perfect=(score-(650000*0.9+100000))/(350000*0.9/combo);
		} 
		for(;perfect<=all_nums[i];perfect++)//遍历所有情况 
		{
			if(perfect*900000.0/combo-1>score)//判断当前perfect数最低得分是否超过目标分 
			{
				break;//若是则结束循环 
			}
			for(good=0;good<=all_nums[i]-perfect;good++)//遍历当前perfect数的所有good数的可能情况 
			{
				if(perfect*900000.0/all_nums[i]+good*650000*0.9/all_nums[i]-1>score)//判断当前perfect、good数最低得分是否超过目标分 
				{
					break;//若是则结束循环 
				}
				for(combo=(good+perfect)/(all_nums[i]-good-perfect+1);combo<=perfect+good;combo++)//如果不是课题模式就遍历所有可能的连击数 
				{
					if((good+perfect)%(all_nums[i]-good-perfect+1)!=0)
					{
						combo++;
					}
					if((int)((0.9*(perfect+0.65*good)+0.1*combo)*1000000/all_nums[i]+0.5)==score)//如果一种情况符合就结束此循环 
					{
						result=1;
						k_result=1;
						f=1;
						times++;
						out(times,perfect,good,combo,all_nums[i],map,os);
						break;
					}
				}
			}
		} 
		if(f)
		{
			os<<endl;
			f=0;
		 } 	
		times=0;
	} 
	if(!k_result)
	{
		os<<"无结果\n";
	}
	return result;
}
//开始计算 


int main()
{
	ifstream input;
	vector<int> defult_all_nums,users_all_nums;//all_nums储存所有物量
	map<int,string> defult_namemap,users_namemap;//namemap储存每个物量对应的所有曲名及难度 
	input.open("defult.pg");
	read(defult_all_nums,defult_namemap,input);
	input.close();
	input.clear();
	input.open("users.pg");
	if(input.good())
	read(users_all_nums,users_namemap,input);
	input.close();
	input.clear();
	ofstream output;
	string mod;
	while(1)
	{
		cout<<"欢迎使用phigros控分计算器！\n计算器作者：音游界的卤逊\n";
		cout<<"请选择模式\n1.分数计算\n2.特定物量计算\n3.手动添加谱面信息\n4.退出\n";
		cin>>mod; 
		switch(string_to_int(mod))
		{
			case(1):
			{
				int score;
				bool f=0;
				cout<<"请输入目标分数:";
				cin>>score;
				cout<<"计算中\n"; 
				string filename=string(",分数=")+int_to_string(score)+string(".txt");
				f+=counting(score,defult_namemap,defult_all_nums,filename);
				if(users_all_nums.size()!=0)
				{
					filename=string("手动添加谱面")+filename;
					f+=counting(score,users_namemap,users_all_nums,filename);
				}
				cout<<"计算完成"; 
				Sleep(500);
				break;
			}
			case(2):
			{
				int tmp_maxcombo,tmp_score;
				cout<<"请输入物量:";
				cin>>tmp_maxcombo;
				cout<<"请输入目标分数:";
				cin>>tmp_score;
				cout<<"计算中\n"; 
				vector<int> tmp_all_nums;
				map<int,string> tmp_namemap;
				tmp_all_nums.push_back(tmp_maxcombo);
				tmp_namemap[tmp_maxcombo]="";
				string filename;
				filename=string("物量=")+int_to_string(tmp_maxcombo)+string(",分数=")+int_to_string(tmp_score)+string(".txt");
				counting(tmp_score,tmp_namemap,tmp_all_nums,filename);
				cout<<"计算完成"; 
				Sleep(500);
				break;
			}
			case(3):
			{
				output.open("users.pg",ios_base::app|ios_base::out);
				string new_name,new_difficulty,new_maxcombo;
				vector<string> new_difficulties,new_maxcombos;
				cout<<"请输入谱面名称：";
				cin.get();
				getline(cin,new_name);
				new_name=reset(new_name,'$','\0');
				new_name=reset(new_name,' ','$');
				cout<<"请输入难度及物量(格式:难度1 物量1 难度2 物量2... ,以\"end\"作为结尾 例：EZ 66 HD 106 SP 250 end)\n";
				while(1)
				{
					bool ok=1;
					cin>>new_difficulty;
					if(new_difficulty!="end")
					{
						cin>>new_maxcombo;
						if(!(is_int(new_maxcombo)&&string_to_int(new_maxcombo)>0))
						{
							ok=0;
							cout<<"物量必须是大于0的整数\n"; 
						}
						if(is_int(new_difficulty))
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
							new_difficulties.push_back(new_difficulty);
							new_maxcombos.push_back(new_maxcombo);
						}
					}
					else
					{
						break;
					}
				}
				output<<new_name<<"\n";
				for(int i=0;i<new_difficulties.size();i++)
				{
					output<<new_difficulties[i]<<"\t";
				}
				output<<endl;
				for(int i=0;i<new_difficulties.size();i++)
				{
					output<<new_maxcombos[i]<<"\t";
				}
				output<<"\n";
				output.close();
				output.clear();
				users_namemap.clear();
				users_all_nums.clear();
				input.open("users.pg");
				read(users_all_nums,users_namemap,input);
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
