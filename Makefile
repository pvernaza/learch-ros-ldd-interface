INCLUDE=-I /opt/local/include -I /opt/local/include/eigen3

all: LEARCHPlannerRobotLDDTest

%.o: %.cc
	$(CXX) -Wall $(INCLUDE) -c $< -o $@

LEARCHPlannerRobotLDDTest.o: LEARCHPlannerRobotLDD.hh 

LEARCHPlannerRobotLDDTest: LEARCHPlannerRobotLDDTest.o
	$(CXX) $(INCLUDE) $< -o $@
