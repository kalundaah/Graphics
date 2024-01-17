world = vrworld('final.WRL');
open(world);

fig = view(world, '-internal');
vrdrawnow;


%World Objects
man = vrnode(world,'Man');
backDoor = vrnode(world,'Back_Door');
camera = vrnode(world,'Camera');
boy = vrnode(world,'Boy');
girl = vrnode(world,'Girl');
van = vrnode(world,'Van');


man.translation = [6.10,-3,-27];
boy.translation = [8.37,-5,-37.84];

location = 'decos.png';
deco = imread(location);
imshow(deco);

children = get(world,'Nodes');
disp(children)

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
end

camera.position = [8.49,-2.04,-32.49]
camera.orientation =[0,0.2,0,-0.75];
vrdrawnow;

for step = 1:numSteps
    value = camera.position(2);
    value = value - 0.01;
    camera.position = [camera.position(1),value,camera.position(3)];
    vrdrawnow;
end

