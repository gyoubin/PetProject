package com.sitter.mapper;

import java.util.List;

import com.sitter.model.SitterVO;
import com.user.model.UserModelVO;
import com.user.model.UserVO;


public interface SitterMapper {
	
	int sitterIntroduce(SitterVO sitter);
	List<SitterVO> getSitterIntroduce(String nickname);
	List<SitterVO> getSitterUsed(String nickname);
	SitterVO getUsedNO(int cno);
	int updateUsed(SitterVO used);
	List<SitterVO> getMembersInfo();
	int addUsed(SitterVO usedAdd);
	int delUsed(int uno);
	List<SitterVO> getPname(String nickname);
	
	UserVO getUserInfo(int idx);
	int editUserInfo(UserVO user);
	String getUserNickname(String mid);
	
	UserModelVO petInfo(int pno);
	
	int icheck(String nickname);
}
