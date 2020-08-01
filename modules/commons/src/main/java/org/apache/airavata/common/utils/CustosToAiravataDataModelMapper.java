package org.apache.airavata.common.utils;

import org.apache.airavata.model.user.Status;
import org.apache.airavata.model.user.UserProfile;
import org.apache.custos.iam.service.UserRepresentation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * A class responsible for map Airavarta data model to Custos data model
 */
public class CustosToAiravataDataModelMapper {
    private final static Logger logger = LoggerFactory.getLogger(CustosToAiravataDataModelMapper.class);


    public static UserProfile transform(UserRepresentation custosUserProfile, String gatewayId) {
        UserProfile userProfile = new UserProfile();
        userProfile.setUserId(custosUserProfile.getUsername());
        userProfile.setFirstName(custosUserProfile.getFirstName());
        userProfile.setAiravataInternalUserId(custosUserProfile.getUsername());
        userProfile.setLastName(custosUserProfile.getLastName());
        userProfile.setCreationTime(Double.valueOf(custosUserProfile.getCreationTime()).longValue());
        userProfile.setLastAccessTime(Double.valueOf(custosUserProfile.getLastLoginAt()).longValue());
        userProfile.setValidUntil(-1);
        List<String> emails = new ArrayList<>();
        emails.add(custosUserProfile.getEmail());
        userProfile.setEmails(emails);
        userProfile.setGatewayId(gatewayId);
        if (custosUserProfile.getState().equals(Status.ACTIVE.name())) {
            userProfile.setState(Status.ACTIVE);
        } else {
            userProfile.setState(Status.PENDING_CONFIRMATION);
        }
        return userProfile;

    }


    public static UserProfile transform(org.apache.custos.user.profile.service.UserProfile custosUserProfile, String gatewayId) throws ParseException {
        UserProfile userProfile = new UserProfile();
        userProfile.setUserId(custosUserProfile.getUsername());
        userProfile.setFirstName(custosUserProfile.getFirstName());
        userProfile.setAiravataInternalUserId(custosUserProfile.getUsername());
        userProfile.setLastName(custosUserProfile.getLastName());
        userProfile.setCreationTime(custosUserProfile.getCreatedAt());
        userProfile.setLastAccessTime(custosUserProfile.getLastModifiedAt());
        userProfile.setValidUntil(-1);
        List<String> emails = new ArrayList<>();
        emails.add(custosUserProfile.getEmail());
        userProfile.setEmails(emails);
        userProfile.setGatewayId(gatewayId);
        if (custosUserProfile.getStatus().equals(Status.ACTIVE.name())) {
            userProfile.setState(Status.ACTIVE);
        } else {
            userProfile.setState(Status.PENDING_CONFIRMATION);
        }
        return userProfile;

    }
}
