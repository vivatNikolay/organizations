package com.practice.organizations.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class Organization {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Integer id;

    private String type;

    private String fullName;

    private String shortName;

    private String fullNameOfTheHead;

    private String address;

    private String region;

    private String fax;

    private String email;

    private Integer UNP;

    private String status;

    private Integer UNPF;

    private Integer OKOGU;

    private String subordination;

    private Integer codeOKFS;

    private String typeOfOwnership;

    private String legalForm;

    private Integer codeOKAD;

    private String mainEconomicActivity;

    private Date dateOfRegistration;

    private String nameOfTheRegisteringAuthority;

    private Date liquidationDate;

    private Integer codeCOATO;

    private Integer idHeadOrganization;


    public Organization() {
    }

    public Organization(String type, String fullName, String shortName, String fullNameOfTheHead,
                        String address, String region, String fax, String email, Integer UNP,
                        String status, Integer UNPF, Integer OKOGU, String subordination,
                        Integer codeOKFS, String typeOfOwnership, String legalForm, Integer codeOKAD,
                        String mainEconomicActivity, Date dateOfRegistration,
                        String nameOfTheRegisteringAuthority, Date liquidationDate, Integer codeCOATO,
                        Integer idHeadOrganization) {
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

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getUNP() {
        return UNP;
    }

    public void setUNP(Integer UNP) {
        this.UNP = UNP;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getUNPF() {
        return UNPF;
    }

    public void setUNPF(Integer UNPF) {
        this.UNPF = UNPF;
    }

    public Integer getOKOGU() {
        return OKOGU;
    }

    public void setOKOGU(Integer OKOGU) {
        this.OKOGU = OKOGU;
    }

    public String getSubordination() {
        return subordination;
    }

    public void setSubordination(String subordination) {
        this.subordination = subordination;
    }

    public Integer getCodeOKFS() {
        return codeOKFS;
    }

    public void setCodeOKFS(Integer codeOKFS) {
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

    public Integer getCodeOKAD() {
        return codeOKAD;
    }

    public void setCodeOKAD(Integer codeOKAD) {
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

    public Integer getCodeCOATO() {
        return codeCOATO;
    }

    public void setCodeCOATO(Integer codeCOATO) {
        this.codeCOATO = codeCOATO;
    }

    public Integer getIdHeadOrganization() {
        return idHeadOrganization;
    }

    public void setIdHeadOrganization(Integer idHeadOrganization) {
        this.idHeadOrganization = idHeadOrganization;
    }
}