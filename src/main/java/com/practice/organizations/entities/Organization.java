package com.practice.organizations.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Organization {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private String type;

    private String fullName;

    private String shortName;

    private String fullNameOfTheHead;

    private String address;

    private String region;

    private String fax;

    private String email;

    private String UNP;

    private String status;

    private String UNPF;

    private String OKOGU;

    private String subordination;

    private String codeOKFS;

    private String typeOfOwnership;

    private String legalForm;

    private String codeOKAD;

    private String mainEconomicActivity;

    private Date dateOfRegistration;

    private String nameOfTheRegisteringAuthority;

    private Date liquidationDate;

    private String codeCOATO;

    private String idHeadOrganization;


    public Organization() {
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getShortName() {
        return shortName;
    }

    public void setShortName(String shortName) {
        this.shortName = shortName;
    }

    public String getFullNameOfTheHead() {
        return fullNameOfTheHead;
    }

    public void setFullNameOfTheHead(String fullNameOfTheHead) {
        this.fullNameOfTheHead = fullNameOfTheHead;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUNP() {
        return UNP;
    }

    public void setUNP(String UNP) {
        this.UNP = UNP;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUNPF() {
        return UNPF;
    }

    public void setUNPF(String UNPF) {
        this.UNPF = UNPF;
    }

    public String getOKOGU() {
        return OKOGU;
    }

    public void setOKOGU(String OKOGU) {
        this.OKOGU = OKOGU;
    }

    public String getSubordination() {
        return subordination;
    }

    public void setSubordination(String subordination) {
        this.subordination = subordination;
    }

    public String getCodeOKFS() {
        return codeOKFS;
    }

    public void setCodeOKFS(String codeOKFS) {
        this.codeOKFS = codeOKFS;
    }

    public String getTypeOfOwnership() {
        return typeOfOwnership;
    }

    public void setTypeOfOwnership(String typeOfOwnership) {
        this.typeOfOwnership = typeOfOwnership;
    }

    public String getLegalForm() {
        return legalForm;
    }

    public void setLegalForm(String legalForm) {
        this.legalForm = legalForm;
    }

    public String getCodeOKAD() {
        return codeOKAD;
    }

    public void setCodeOKAD(String codeOKAD) {
        this.codeOKAD = codeOKAD;
    }

    public String getMainEconomicActivity() {
        return mainEconomicActivity;
    }

    public void setMainEconomicActivity(String mainEconomicActivity) {
        this.mainEconomicActivity = mainEconomicActivity;
    }

    public Date getDateOfRegistration() {
        return dateOfRegistration;
    }

    public void setDateOfRegistration(Date dateOfRegistration) {
        this.dateOfRegistration = dateOfRegistration;
    }

    public String getNameOfTheRegisteringAuthority() {
        return nameOfTheRegisteringAuthority;
    }

    public void setNameOfTheRegisteringAuthority(String nameOfTheRegisteringAuthority) {
        this.nameOfTheRegisteringAuthority = nameOfTheRegisteringAuthority;
    }

    public Date getLiquidationDate() {
        return liquidationDate;
    }

    public void setLiquidationDate(Date liquidationDate) {
        this.liquidationDate = liquidationDate;
    }

    public String getCodeCOATO() {
        return codeCOATO;
    }

    public void setCodeCOATO(String codeCOATO) {
        this.codeCOATO = codeCOATO;
    }

    public String getIdHeadOrganization() {
        return idHeadOrganization;
    }

    public void setIdHeadOrganization(String idHeadOrganization) {
        this.idHeadOrganization = idHeadOrganization;
    }

    public Organization(String type, String fullName, String shortName, String fullNameOfTheHead, String address, String region, String fax, String email, String UNP, String status, String UNPF, String OKOGU, String subordination, String codeOKFS, String typeOfOwnership, String legalForm, String codeOKAD, String mainEconomicActivity, Date dateOfRegistration, String nameOfTheRegisteringAuthority, Date liquidationDate, String codeCOATO, String idHeadOrganization) {
        this.type = type;
        this.fullName = fullName;
        this.shortName = shortName;
        this.fullNameOfTheHead = fullNameOfTheHead;
        this.address = address;
        this.region = region;
        this.fax = fax;
        this.email = email;
        this.UNP = UNP;
        this.status = status;
        this.UNPF = UNPF;
        this.OKOGU = OKOGU;
        this.subordination = subordination;
        this.codeOKFS = codeOKFS;
        this.typeOfOwnership = typeOfOwnership;
        this.legalForm = legalForm;
        this.codeOKAD = codeOKAD;
        this.mainEconomicActivity = mainEconomicActivity;
        this.dateOfRegistration = dateOfRegistration;
        this.nameOfTheRegisteringAuthority = nameOfTheRegisteringAuthority;
        this.liquidationDate = liquidationDate;
        this.codeCOATO = codeCOATO;
        this.idHeadOrganization = idHeadOrganization;
    }

    @Override
    public String toString() {
        return "Organization{" +
                "id=" + id +
                ", type='" + type + '\'' +
                ", fullName='" + fullName + '\'' +
                ", shortName='" + shortName + '\'' +
                ", fullNameOfTheHead='" + fullNameOfTheHead + '\'' +
                ", address='" + address + '\'' +
                ", region='" + region + '\'' +
                ", fax='" + fax + '\'' +
                ", email='" + email + '\'' +
                ", UNP=" + UNP +
                ", status='" + status + '\'' +
                ", UNPF=" + UNPF +
                ", OKOGU=" + OKOGU +
                ", subordination='" + subordination + '\'' +
                ", codeOKFS=" + codeOKFS +
                ", typeOfOwnership='" + typeOfOwnership + '\'' +
                ", legalForm='" + legalForm + '\'' +
                ", codeOKAD=" + codeOKAD +
                ", mainEconomicActivity='" + mainEconomicActivity + '\'' +
                ", dateOfRegistration=" + dateOfRegistration +
                ", nameOfTheRegisteringAuthority='" + nameOfTheRegisteringAuthority + '\'' +
                ", liquidationDate=" + liquidationDate +
                ", codeCOATO=" + codeCOATO +
                ", idHeadOrganization=" + idHeadOrganization +
                '}';
    }
}