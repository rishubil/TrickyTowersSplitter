state("TrickyTowers")
{
    byte isPlaying : "TrickyTowers.exe", 0x1048EBC, 0x64, 0x4B4, 0x270, 0x4E4, 0x578;
    byte isFinished : "TrickyTowers.exe", 0x10494D8, 0x1C, 0x59C, 0x214, 0x48, 0x228;
}

start {
    return current.isPlaying == 1 && old.isPlaying == 0;
}


split {
    return current.isFinished == 1 && old.isFinished == 0;
}