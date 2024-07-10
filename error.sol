// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SchoolGradingSystem {
    struct Student {
        string name;
        uint grade;
    }

    mapping(uint => Student) private students;
    uint private studentCount;
    address private teacher;

    constructor() {
        teacher = msg.sender;
    }

    modifier onlyTeacher() {
        require(msg.sender == teacher, "Only the teacher can perform this action.");
        _;
    }

    function addStudent(uint _studentId, string memory _name, uint _grade) public onlyTeacher {
        require(_grade >= 0 && _grade <= 100, "Grade must be between 0 and 100.");
        require(bytes(_name).length > 0, "Name cannot be empty.");
        
        assert(students[_studentId].grade == 0);

        students[_studentId] = Student(_name, _grade);
        studentCount++;
    }

    function getStudent(uint _studentId) public view returns (string memory, uint) {
        require(_studentId < studentCount, "Student does not exist.");
        Student memory student = students[_studentId];
        return (student.name, student.grade);
    }

    function updateGrade(uint _studentId, uint _newGrade) public onlyTeacher {
        require(_newGrade >= 0 && _newGrade <= 100, "Grade must be between 0 and 100.");
        
        if(students[_studentId].grade == 0){
            revert("Student does not exist.");
        }

        students[_studentId].grade = _newGrade;
    }
}
