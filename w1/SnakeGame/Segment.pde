class Segment {
  private Block headBlock;
  private Block[] blocks;
  private FadingEffect fading;
  
  public Segment(Block headBlock, int nBlocks){
    this.headBlock = headBlock;
    this.blocks = new Block[nBlocks];
    for(int i=0; i < this.blocks.length; i++){
      this.blocks[i] = new Block( headBlock.column, headBlock.row, "X");    
    }
    
    this.fading = new FadingEffect(nBlocks, 300);
  }
  
  public void updateMove(){
    fading.restart();
    for(int i=0; i < blocks.length-1; i++){
      blocks[i].column = blocks[i+1].column;
      blocks[i].row = blocks[i+1].row;
    }
    blocks[blocks.length-1].column = headBlock.column;
    blocks[blocks.length-1].row = headBlock.row;
  }
   
  public Block[] getBlocks(){
    int shownBlocks = fading.fade();
    forgetOtherBlocks( max(1, shownBlocks));
    return recolor(max(1, shownBlocks));
    //return blocks;
  }
   
  private void forgetOtherBlocks(int nRemainingBlocks){
    int n = min( blocks.length, nRemainingBlocks);
    int rem = blocks.length - n;
    if( rem > 0 ){
      for(int i=0; i < rem; i++){
        blocks[i].column = blocks[rem].column;
        blocks[i].row = blocks[rem].row;
      } 
    }
  }
   
  private Block[] recolor(int nBlocks){
    for(int i = 0; i < blocks.length; i++){
      blocks[i].name = "X";
      blocks[i].id = 0;
    }
    int n = min( blocks.length, nBlocks);
    int rem = blocks.length - n;
    Block[] output = new Block[n];
    for(int i = blocks.length-1, j=output.length - 1; i >= rem; i--,j--){
      blocks[i].id = (i+1-rem);
      output[j] = blocks[i];
    }
    return output;
  }
  
}
