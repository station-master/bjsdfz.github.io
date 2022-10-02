
1、有一个基础的数据库 里面记录不同物量
四个等级和曲名匹配并分开
2、自定义物量
3、P G C三个变量
4、 普通  课题
5、输出格式 

曲名1
等级1
序号+P+G+C
等级2

曲名2


bool counting(int score,map<int,string> map,vector<int> all,string filename,bool q=1) 
{
	ofstream os; 
	bool result=1;
	bool f=1,kf=1;
	int perfect=0,good=0,combo=0,times=0,snum=0,cnum=0;
	os.open((string("课题模式")+filename).data());
	循环(int i=0;i<;i++)
	{
		perfect=0;
		当score大于650000
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
		int score;
		bool f=0;
		cout<<"SCORE YOU WANT:";
		cin>>score;
		cout<<"WAIT...\n"; 
		string filename=string(",SCORE=")+its(score)+string(".txt");
		f+=counting(score,d_map,d_all,filename);
		if(u_all.size()!=0)
		{
			filename=string("手动添加谱面")+filename;
			f+=counting(score,u_map,u_all,filename);
		}
		cout<<"SUCCESS"; 
		Sleep(500);
		break;
	}
		}
		system("cls");
	}
	return 0;
}
