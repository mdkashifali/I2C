class transaction;
  
  bit newd;
  rand bit op;
  rand bit [7:0] din;
  rand bit [6:0] addr;
  bit [7:0] dout;
  bit done;
  bit busy;
  bit ack_err;
  
  constraint addr_c { addr > 1; addr < 5; din > 1; din < 10; }
  
  
  constraint rd_wr_c {
    op dist {1 :/ 50 ,  0 :/ 50};
  }
  
endclass
