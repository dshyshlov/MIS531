-- FOREIGN KEY CONSTRAINTS

ALTER TABLE AREAS 
ADD CONSTRAINT areas_stateID_fk FOREIGN KEY (stateID) REFERENCES STATES (stateID);

ALTER TABLE AREA_ZIP 
ADD CONSTRAINT areaZip_areaID_fk FOREIGN KEY (areaID) REFERENCES AREAS (areaID);

ALTER TABLE BRANCHES
  ADD CONSTRAINT branches_stateID_fk FOREIGN KEY (stateID) REFERENCES STATES (stateID);
ALTER TABLE BRANCHES
  ADD CONSTRAINT branches_mainBranchID_fk FOREIGN KEY (main_branch_ID, regionID) REFERENCES MAIN_BRANCHES (main_branch_ID, regionID);

ALTER TABLE MAIN_BRANCHES
    ADD CONSTRAINT mainBranches_mainBranchID_fk FOREIGN KEY (main_branch_ID) REFERENCES BRANCHES (branchID);
ALTER TABLE MAIN_BRANCHES
    ADD CONSTRAINT mainBranches_regionID_fk FOREIGN KEY (regionID) REFERENCES REGIONS (regionID);
    
ALTER TABLE CAN_SERVICE_AREA
    ADD CONSTRAINT canServiceArea_areadID_fk FOREIGN KEY (areaID) REFERENCES AREAS (areaID);
ALTER TABLE CAN_SERVICE_AREA
    ADD CONSTRAINT canServiceArea_teamID_fk FOREIGN KEY (teamID) REFERENCES CUSTOMER_REP_TEAMS (teamID);

ALTER TABLE CAN_SERVICE_CLIENT
    ADD CONSTRAINT canServiceClient_clientID_fk FOREIGN KEY (clientID) REFERENCES CLIENTS (clientID);
ALTER TABLE CAN_SERVICE_CLIENT
    ADD CONSTRAINT canServiceClient_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES(empID);

ALTER TABLE CLIENTS
    ADD CONSTRAINT clients_stateID_fk FOREIGN KEY (stateID) REFERENCES STATES (stateID);

ALTER TABLE CLIENT_SITES 
    ADD CONSTRAINT clientSites_clientID_fk FOREIGN KEY (clientID) REFERENCES CLIENTS (clientID);
ALTER TABLE CLIENT_SITES 
    ADD CONSTRAINT clientSites_areaID_fk FOREIGN KEY (areaID) REFERENCES AREAS (areaID);
ALTER TABLE CLIENT_SITES 
    ADD CONSTRAINT clientSites_stateID_fk FOREIGN KEY (stateID) REFERENCES STATES (stateID);
    
ALTER TABLE COURSES
    ADD CONSTRAINT courses_productGroupID_fk FOREIGN KEY (product_group_ID) REFERENCES PRODUCT_GROUPS (product_group_ID);


ALTER TABLE CUSTOMER_REPS
    ADD CONSTRAINT customerReps_empID_fk  FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);
ALTER TABLE CUSTOMER_REPS
    ADD CONSTRAINT customerReps_teamID_fk FOREIGN KEY (teamID) REFERENCES CUSTOMER_REP_TEAMS (teamID);
ALTER TABLE CUSTOMER_REPS
    ADD CONSTRAINT customerReps_branchID_fk FOREIGN KEY (branchID) REFERENCES BRANCHES (branchID);

ALTER TABLE CUSTOMER_REP_TEAMS 
    ADD CONSTRAINT customerRepTeams_teamLeadID_fk FOREIGN KEY (team_leadID) REFERENCES EMPLOYEES (empID);
ALTER TABLE CUSTOMER_REP_TEAMS 
    ADD CONSTRAINT customerRepTeams_officeArea_fk FOREIGN KEY (office_area) REFERENCES AREAS (areaID);

ALTER TABLE CUSTOMER_REP_SPECIALTIES
    ADD CONSTRAINT cusRepSpecial_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);
ALTER TABLE CUSTOMER_REP_SPECIALTIES
    ADD CONSTRAINT custRepSpecial_specialty_fk FOREIGN KEY (specialty) REFERENCES PRODUCT_GROUPS (product_group_ID);
        

ALTER TABLE DISTRIBUTE 
  ADD CONSTRAINT distribute_stateID_fk FOREIGN KEY (stateID) REFERENCES STATES (stateID);
ALTER TABLE DISTRIBUTE 
  ADD CONSTRAINT distribute_productID_fk FOREIGN KEY (productID) REFERENCES PRODUCTS (productID);
ALTER TABLE DISTRIBUTE 
  ADD CONSTRAINT distribute_distDetailsID_fk FOREIGN KEY (dist_details_ID) REFERENCES DISTRIBUTION_DETAILS (dist_details_ID);


ALTER TABLE EMERGENCY_ORDERS
    ADD CONSTRAINT emerOrd_orderID_fk FOREIGN KEY (orderID) REFERENCES ORDERS (orderID);
ALTER TABLE EMERGENCY_ORDERS
    ADD CONSTRAINT emerOrd_assignedCusRepID_fk FOREIGN KEY (assigned_cus_repID) REFERENCES CUSTOMER_REPS (empID);


ALTER TABLE EMPLOYEES 
  ADD CONSTRAINT employees_branchID_fk FOREIGN KEY (branchID) REFERENCES BRANCHES (branchID);


ALTER TABLE FUNCTIONAL_EMPLOYEES 
    ADD CONSTRAINT funcEmp_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);
ALTER TABLE FUNCTIONAL_EMPLOYEES 
    ADD CONSTRAINT funcEmp_branchID_fk FOREIGN KEY (branchID) REFERENCES BRANCHES (branchID);


ALTER TABLE MANAGERS 
    ADD CONSTRAINT managers_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);
ALTER TABLE MANAGERS 
    ADD CONSTRAINT managers_branchID_fk FOREIGN KEY (branchID) REFERENCES BRANCHES (branchID);


ALTER TABLE BRAND_MANAGERS 
    ADD CONSTRAINT brandManagers_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);
ALTER TABLE BRAND_MANAGERS 
    ADD CONSTRAINT brandManagers_promoID_fk FOREIGN KEY (promoID) REFERENCES PROMOTIONS (promoID);

ALTER TABLE PRODUCT_LINE_MANAGERS 
   ADD CONSTRAINT prodLineMgr_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);
ALTER TABLE PRODUCT_LINE_MANAGERS 
  ADD CONSTRAINT prodLineMgr_lineNumber_fk FOREIGN KEY (line_number) REFERENCES PRODUCT_LINES (line_number);

ALTER TABLE REGIONAL_MANAGERS 
  ADD CONSTRAINT regionalManagers_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);
ALTER TABLE REGIONAL_MANAGERS 
  ADD CONSTRAINT regionalManagers_regionID_fk FOREIGN KEY (regionID) REFERENCES REGIONS (regionID);

ALTER TABLE SALARIED
  ADD CONSTRAINT salaried_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);

ALTER TABLE TEMPORARY 
  ADD CONSTRAINT temporary_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);

ALTER TABLE INCIDENTS 
  ADD CONSTRAINT incidents_orderID_fk FOREIGN KEY (orderID) REFERENCES ORDERS (orderID);
ALTER TABLE INCIDENTS 
  ADD CONSTRAINT incidents_clientID_fk FOREIGN KEY (clientID) REFERENCES CLIENTS (clientID);

ALTER TABLE ITEMS  
    ADD CONSTRAINT items_orderDetailsID_fk FOREIGN KEY (order_details_ID) REFERENCES ORDER_DETAILS (order_details_ID);
ALTER TABLE ITEMS 
    ADD CONSTRAINT items_productID_fk FOREIGN KEY (productID) REFERENCES PRODUCTS (productID);
ALTER TABLE ITEMS 
    ADD CONSTRAINT items_orderID_fk FOREIGN KEY (orderID) REFERENCES ORDERS (orderID);

ALTER TABLE NEW_PRODUCTS 
    ADD CONSTRAINT newProducts_productID_fk FOREIGN KEY (productID) REFERENCES PRODUCTS (productID);
 ALTER TABLE NEW_PRODUCTS 
    ADD CONSTRAINT newProducts_visitDetailsID_fk FOREIGN KEY (visit_details_ID) REFERENCES VISIT_DETAILS (visitID);

ALTER TABLE ORDERS 
  ADD CONSTRAINT orders_siteID_fk FOREIGN KEY (siteID) REFERENCES CLIENT_SITES (siteID);

ALTER TABLE ORDER_DETAILS 
    ADD CONSTRAINT ordersDetails_orderID_fk FOREIGN KEY (orderID) REFERENCES ORDERS (orderID);
ALTER TABLE ORDER_DETAILS 
    ADD CONSTRAINT ordersDetails_siteID_fk FOREIGN KEY (siteID) REFERENCES CLIENT_SITES (siteID);


ALTER TABLE PRODUCTS 
    ADD CONSTRAINT products_lineNumber_fk FOREIGN KEY (line_number) REFERENCES PRODUCT_LINES (line_number);
ALTER TABLE PRODUCTS 
    ADD CONSTRAINT products_prodGroups_fk FOREIGN KEY (product_group_ID) REFERENCES PRODUCT_GROUPS (product_group_ID);


ALTER TABLE PRODUCT_LINES 
    ADD CONSTRAINT productLines_highVolItem_fk FOREIGN KEY (highest_volume_item) REFERENCES PRODUCTS (productID);
ALTER TABLE PRODUCT_LINES 
    ADD CONSTRAINT productLines_highProfItem_fk FOREIGN KEY (highest_profit_item) REFERENCES PRODUCTS (productID);

ALTER TABLE PROMOTE 
    ADD CONSTRAINT promote_promoID_fk FOREIGN KEY (promoID) REFERENCES PROMOTIONS (promoID);
ALTER TABLE PROMOTE 
    ADD CONSTRAINT promote_productID_fk FOREIGN KEY (productID) REFERENCES PRODUCTS (productID);
ALTER TABLE PROMOTE 
    ADD CONSTRAINT promote_pstateID_fk FOREIGN KEY (stateID) REFERENCES STATES (stateID);


ALTER TABLE PROMOTIONS 
    ADD CONSTRAINT promotions_productID_fk FOREIGN KEY (productID) REFERENCES PRODUCTS (productID);
ALTER TABLE PROMOTIONS 
    ADD CONSTRAINT promotions_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);

ALTER TABLE REVIEW_DETAILS 
    ADD CONSTRAINT reviewDetails_clientID_fk FOREIGN KEY (clientID) REFERENCES CLIENTS (clientID);


ALTER TABLE SESSIONS 
   ADD CONSTRAINT sessions_instructor_fk FOREIGN KEY (instructor) REFERENCES EMPLOYEES (empID);
ALTER TABLE SESSIONS 
   ADD CONSTRAINT sessions_courseID_fk FOREIGN KEY (courseID) REFERENCES COURSES (courseID);

ALTER TABLE SPECIALIZES 
    ADD CONSTRAINT specializes_sessionID_fk FOREIGN KEY (sessionID) REFERENCES SESSIONS (sessionID);
ALTER TABLE SPECIALIZES 
    ADD CONSTRAINT specializes_prodGroupID_fk FOREIGN KEY (product_group_ID) REFERENCES PRODUCT_GROUPS (product_group_ID);

ALTER TABLE TAXES 
    ADD CONSTRAINT taxes_stateID_fk FOREIGN KEY (stateID) REFERENCES STATES (stateID);


ALTER TABLE TRAIN_AT 
    ADD CONSTRAINT trainAt_sessionID_fk FOREIGN KEY (sessionID) REFERENCES SESSIONS(sessionID);
ALTER TABLE TRAIN_AT 
    ADD CONSTRAINT trainAt_empID_fk FOREIGN KEY (empID) REFERENCES EMPLOYEES (empID);

ALTER TABLE VISIT_DETAILS 
    ADD CONSTRAINT visitDetails_siteID_fk FOREIGN KEY (siteID) REFERENCES CLIENT_SITES (siteID);
    
commit;
