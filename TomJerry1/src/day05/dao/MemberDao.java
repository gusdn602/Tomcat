package day05.dao;

import java.sql.*;
import DB.*;
import day05.vo.*;
import day05.sql.*;
public class MemberDao {
	ORCLJDBC db;
	MemberSQL mSql;
	Connection con;
	Statement stmt;
	ResultSet rs;
	PreparedStatement pstmt;
	
	public MemberDao() {
		db = new ORCLJDBC();
		mSql = new MemberSQL();
	}
	//회원아이디 카운트 조회 전담 처리 함수
	public int getCount(String id) {
		int cnt = 0;
		//할일
		//1. 커넥션 가져오고
		con = db.getCon(); 
		//2. 질의명령 가져오고
		String sql = mSql.getSql(mSql.SEL_ID_CNT);
		//3. 스테이트먼트 가져오고
		pstmt = db.getPSTMT(con, sql);
		try {
			//4. 질의명령 완성하고
			pstmt.setString(1, id);
			//5. 질의명령 보내고 결과 받고
			rs = pstmt.executeQuery();
			//6. 결과에서 데이터 뽑아서 변수에 담고
			rs.next();
			cnt = rs.getInt("cnt");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		//7. 데이터 내보내고 
		return cnt;
	}
	//�쉶�썝 �븘�씠�뵒濡� �쉶�썝 �젙蹂대�� 媛��졇�삤�뒗 �옉�뾽 泥섎━ �쟾�떞 �븿�닔
	public MemberVO getInfo(String id) {
		MemberVO mVO = new MemberVO();
		//�븷�씪 
		//1. 而ㅻ꽖�뀡 媛��졇�삤湲�
		con = db.getCon();
		//2. 吏덉쓽紐낅졊 媛��졇�삤湲�
		String sql = mSql.getSql(mSql.SEL_INFO);
		//3. �뒪�뀒�씠�듃癒쇳듃 以�鍮�
		pstmt = db.getPSTMT(con, sql);
		try {
		//4. 吏덉쓽紐낅졊 �셿�꽦�븯怨�
			pstmt.setString(1, id);
		//5. 吏덉쓽紐낅㈇�뀋 蹂대궡怨� 寃곌낵 諛쏄퀬
			rs = pstmt.executeQuery();
		//6. 寃곌낵�뿉�꽌 �뜲�씠�꽣爰쇰궡�꽌 VO�뿉 �떞怨�
			rs.next();
			mVO.setId(rs.getString("id"));
			mVO.setName(rs.getString("oriname"));
			mVO.setTel(rs.getString("tel"));
			mVO.setMail(rs.getString("mail"));
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			db.close(rs);
			db.close(pstmt);
			db.close(con);
		}
		//7. 
		
		return mVO;
	}

}
