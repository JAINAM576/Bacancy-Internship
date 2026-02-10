-- TENANTS
-- create database Tenants;
use Tenants;
CREATE TABLE tenants (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Dummy data
INSERT INTO tenants (name) VALUES 
('Tenant A'),
('Tenant B');

-- USERS
CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Dummy data
INSERT INTO users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

-- ORGANIZATIONS
CREATE TABLE organizations (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tenant_id BIGINT NOT NULL,
    name VARCHAR(255) NOT NULL,
    owner_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (tenant_id) REFERENCES tenants(id),
    FOREIGN KEY (owner_id) REFERENCES users(id)
);

-- Dummy data
INSERT INTO organizations (tenant_id, name, owner_id) VALUES
(1, 'Org 1', 1),
(1, 'Org 2', 2),
(2, 'Org 3', 3);

-- ROLES
CREATE TABLE roles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Dummy data
INSERT INTO roles (name, description) VALUES
('OWNER', 'Organization owner'),
('ADMIN', 'Organization administrator'),
('MEMBER', 'Organization member'),
('MANAGER', 'Organization manager');

-- FEATURES
CREATE TABLE features (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Dummy data
INSERT INTO features (name, description) VALUES
('CREATE_PROJECT', 'Can create projects'),
('EDIT_PROJECT', 'Can edit projects'),
('DELETE_PROJECT', 'Can delete projects'),
('VIEW_REPORTS', 'Can view reports');

-- ROLE_FEATURES (maps features to roles)
CREATE TABLE role_features (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    role_id BIGINT NOT NULL,
    feature_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles(id),
    FOREIGN KEY (feature_id) REFERENCES features(id)
);

-- Dummy data
-- OWNER has all features
INSERT INTO role_features (role_id, feature_id) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- ADMIN has limited features
INSERT INTO role_features (role_id, feature_id) VALUES
(2, 1),
(2, 2),
(2, 4);

-- MEMBER can only view reports
INSERT INTO role_features (role_id, feature_id) VALUES
(3, 4);

-- MANAGER can create and edit projects
INSERT INTO role_features (role_id, feature_id) VALUES
(4, 1),
(4, 2);

-- ORGANIZATION_USER_ROLES
CREATE TABLE organization_user_roles (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    user_id BIGINT NOT NULL,
    organization_id BIGINT NOT NULL,
    role_id BIGINT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (organization_id) REFERENCES organizations(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

-- Dummy data
INSERT INTO organization_user_roles (user_id, organization_id, role_id) VALUES
(1, 1, 1), -- Alice is OWNER of Org 1
(2, 1, 2), -- Bob is ADMIN in Org 1
(3, 1, 3), -- Charlie is MEMBER in Org 1
(2, 2, 1), -- Bob is OWNER of Org 2
(3, 2, 4); -- Charlie is MANAGER in Org 2
