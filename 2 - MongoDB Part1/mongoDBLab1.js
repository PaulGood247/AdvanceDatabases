db.c12397836_schema.insert(
{
	studentId:1,
	name: 'Mary',
	surname: 'Murray',
	nationality: 'Irish',
	age:45
});
db.c12397836_schema.insert(
{
	studentId:2,
	name: 'Bill',
	surname: 'Bellichick',
	nationality: 'American',
	age:32
});
db.c12397836_schema.insert(
{
	studentId:3,
	name: 'Tom',
	surname: 'Brady',
	nationality: 'Candian',
	age:22
});
db.c12397836_schema.insert(
{
	studentId:4,
	name: 'John',
	surname: 'Bale',
	nationality: 'English',
	age:24
});

db.c12397836_schema.insert(
{
	courseId: 'DB',
	courseName: 'Databases',
	credits: 10
});
db.c12397836_schema.insert(
{
	courseId: 'MA',
	courseName: 'Maths',
	credits: 5
});
db.c12397836_schema.insert(
{
	courseId: 'PR',
	courseName: 'Programming',
	credits: 15
});

db.c12397836_schema.insert(
{
	studentId: 1,
	courseId: 'DB',
	mark: 56,
	examDate: '10/10/2011'
});
db.c12397836_schema.insert(
{
	studentId: 1,
	courseId: 'MA',
	mark: 76,
	examDate: '09/11/2012'
});
db.c12397836_schema.insert(
{
	studentId: 1,
	courseId: 'PR',
	mark: 45,
	examDate: '02/07/2014'
});
db.c12397836_schema.insert(
{
	studentId: 2,
	courseId: 'DB',
	mark: 55,
	examDate: '10/10/2011'
});
db.c12397836_schema.insert(
{
	studentId: 2,
	courseId: 'MA',
	mark: 87,
	examDate: '09/11/2012'
});
db.c12397836_schema.insert(
{
	studentId: 2,
	courseId: 'PR',
	mark: 45,
	examDate: '10/10/2011'
});
db.c12397836_schema.insert(
{
	studentId: 3,
	courseId: 'DB',
	mark: 34,
	examDate: '09/11/2012'
});
db.c12397836_schema.insert(
{
	studentId: 3,
	courseId: 'MA',
	mark: 56,
	examDate: '02/07/2014'
});
db.c12397836_schema.insert(
{
	studentId: 4,
	courseId: 'DB',
	mark: 71,
	examDate: '10/10/2011'
});
db.c12397836_schema.insert(
{
	studentId: 4,
	courseId: 'MA',
	mark: 88,
	examDate: '10/10/2011'
});
db.c12397836_schema.insert(
{
	studentId: 4,
	courseId: 'PR',
	mark: 95,
	examDate: '09/11/2012'
});

//1. Find all the students that failed
db.c12397836_schema.find({"mark" : {$lt : 40} });

//2. Find the number of people that passed each exam
db.c12397836_schema.aggregate([{$match: {mark: {$gte : 40}}}, {$group: {_id: "$courseId", NumberOfPasses: {$sum : 1}}}]);

//3. Find the student with the highest average mark
db.c12397836_schema.aggregate([{$group: {_id: "$studentId", avgMark: {$avg: "$mark"}}}, {$limit : 1}]);