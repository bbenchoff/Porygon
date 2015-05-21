module head()
{
    import("head.stl");
}

module body()
{
    import("body.stl");
}

module tail()
{
    import("tail.stl");
}

module feet()
{
    translate([-7,0,0]){
        import("footLeft.stl");
    }
    translate([7,0,0]){
    import("footRight.stl");
    }
}



union()
{
    body();
    tail();
    head();
    feet();
}