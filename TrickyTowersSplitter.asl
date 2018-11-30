state("TrickyTowers")
{
    byte isPlaying : "TrickyTowers.exe", 0x1010BD0, 0x184, 0x454, 0x304, 0x458, 0x248;
    byte isFinished : "TrickyTowers.exe", 0x10494D8, 0x1C, 0x59C, 0x214, 0x48, 0x228;
}

start {
    return current.isPlaying == 1 && old.isPlaying == 0;
}


split {
    return current.isFinished == 1 && old.isFinished == 0;
}