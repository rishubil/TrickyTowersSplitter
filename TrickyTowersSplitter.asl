state("TrickyTowers")
{
    byte isPlaying : "TrickyTowers.exe", 0x01010BD0, 0x8;
    byte isFinished : "TrickyTowers.exe", 0x10494D8, 0x1C, 0x59C, 0x214, 0x48, 0x228;
}

start {
    return current.isPlaying == 1 && old.isPlaying == 0;
}


split {
    return current.isFinished == 1 && old.isFinished == 0;
}