package bams.dao;

import java.sql.Connection;

import bams.entity.AllProperty;
import bams.entity.EmployerDuty;
import bams.entity.EnterprisePackage;
import bams.entity.Family;
import bams.entity.Freight;
import bams.entity.Office;
import bams.entity.Vehicle;



public interface DataToWordDAO {

	public AllProperty getAllProperty(String tag);
	public EmployerDuty getEmployerDuty(String tag);
	public EnterprisePackage getEnterprisePackage(String tag);
	public Family getFamily(String tag);
	public Freight getFreight(String tag);
	public Office getOffice(String tag);
	public Vehicle getVehicle(String tag);
	public Connection getConnection();
	public void setConnection(Connection connection);
}
