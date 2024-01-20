world = vrworld('preornaments.WRL');
open(world);

fig = view(world, '-internal');
vrdrawnow;


%World Objects
man = vrnode(world,'Man');
% backDoor = vrnode(world,'Back_Door');
% packingwall = vrnode(world,'Parking_Wall');
camera = vrnode(world,'Camera');
boy = vrnode(world,'Boy');
girl = vrnode(world,'Girl');


girl.translation= [12.10,-4,-27];
man.translation = [6.10,-3,-27];
boy.translation = [8.37,-5,-37.84];


newscale = [0.025,0.025,0.025];
boy.scale = newscale;


camera.position = [-3.90, -3.0, -27.84];
camera.orientation =[0,0.9,0,-0.80];
vrdrawnow;


% Number of steps in the loop
numSteps = 150;

%Loop to gradually change the x position of camera
for step = 1:numSteps
    value = camera.position(1);
    value = value + 0.05;
    camera.position = [value,camera.position(2),camera.position(3)];
    vrdrawnow;
    pause(0.01)
end


camera.position = [-3.90, -3.0, -27.84];
camera.orientation =[0,0.2,0,0.0];
vrdrawnow;
numSteps = 200;

for step = 1:numSteps
    value = camera.position(1);
    value = value + 0.05;
    camera.position = [value,camera.position(2),camera.position(3)];
    vrdrawnow;
    pause(0.01)
end



camera.position = [-3.90, -1.0, -30.84];
camera.orientation =[0,0.2,0,-3.0];
vrdrawnow;
numSteps = 200;

for step = 1:numSteps
    value = camera.position(1);
    value = value + 0.05;
    camera.position = [value,camera.position(2),camera.position(3)];
    vrdrawnow;
    pause(0.01)
end

camera.position = [8.49,-2.04,-32.49];
camera.orientation =[0,0.2,0,-0.75];
vrdrawnow;

for step = 1:numSteps
    value = camera.position(2);
    value = value - 0.01;
    camera.position = [camera.position(1),value,camera.position(3)];
    vrdrawnow;
    pause(0.01)
end



camera.position = [-3.90, -3.0, -27.84];
camera.orientation =[0,0.9,0,-0.80];
vrdrawnow;

girl.translation = [10,-4,-32.49];
newrotation = [0,1,0];
newangle = 185;
girl.rotation = [newrotation,newangle];
vrdrawnow;

man.translation = [13,-3,-33]; 
vrdrawnow;
pause(2);

camera.position = [8.49,-2.04,-32.49];
camera.orientation =[0,0.2,0,-0.75];
vrdrawnow;

for step = 1:numSteps
    value = camera.position(2);
    value = value - 0.01;
    camera.position = [camera.position(1),value,camera.position(3)];
    vrdrawnow;
    pause(0.01)
end


numSteps = 100;
for step = 1:numSteps
    boy.translation = [boy.translation(1)+0.005,boy.translation(2),boy.translation(3)+0.025];
    vrdrawnow;
    pause(0.01)
end


newangle = 190;
boy.rotation=[newrotation,newangle];

pause(3);


ideal = [5.08,-4.04,-28.83];
disp(camera.position);
numsteps = 10;
for step = 1:numSteps
    camera.position = [camera.position(1)-0.0273,camera.position(2),camera.position(3)+0.0244];
    vrdrawnow;
    pause(0.03)
end
disp(camera.position);


