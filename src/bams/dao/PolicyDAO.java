package bams.dao;

import java.sql.Connection;

import bams.entity.AllProperty;
import bams.entity.EmployerDuty;
import bams.entity.EnterprisePackage;
import bams.entity.Family;
import bams.entity.Freight;
import bams.entity.Office;
import bams.entity.Vehicle;

public interface PolicyDAO {

	public boolean addAllProperty(AllProperty allproperty)throws Exception;
	public boolean addEmployerDuty(EmployerDuty employerduty)throws Exception;
	public boolean addFreight(Freight freight)throws Exception;
	public boolean addVehicle(Vehicle vehicle)throws Exception;
	public boolean addFamily(Family family)throws Exception;
	public boolean addOffice(Office office)throws Exception;
	public boolean addEnterprisePackage(EnterprisePackage enterprisepackage)throws Exception;
	public Connection getConnection()throws Exception;
	
	public void setConnection(Connection connection)throws Exception;
}
