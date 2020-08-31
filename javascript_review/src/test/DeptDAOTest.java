package test;

public class DeptDAOTest {
	public static void main(String[] args) {
		DeptDAO dao = new DeptDAO();
		//dao.insert(new DeptVO(1000, "인사"));
		//dao.update(new DeptVO(1000, "영업"));
		dao.delete(new DeptVO(517));
		//DeptVO deptVO = dao.selectOne(new DeptVO(10));
		//System.out.println(deptVO);
		//ArrayList<DeptVO> list = dao.selectAll(null);
		//System.out.println(list);
	}	
}
