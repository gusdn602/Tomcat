package day05.sql;

public class MemberSQL {
	public final int SEL_INFO = 1001;
	public final int SEL_ID_CNT = 1002;
	public String getSql(int code) {
		StringBuffer buff = new StringBuffer();
		switch(code) {
		case SEL_INFO:
			buff.append("SELECT ");
			buff.append(" id, oriname, tel, mail ");
			buff.append("FROM ");
			buff.append(" member ");
			buff.append(" WHERE ");
			buff.append(" id = ? ");
			break;
		case SEL_ID_CNT:
			buff.append("SELECT ");
			buff.append(" count(*) cnt ");
			buff.append("FROM ");
			buff.append(" member ");
			buff.append(" WHERE ");
			buff.append(" id = ? ");
			break;
		}
		return buff.toString();
	}
}
