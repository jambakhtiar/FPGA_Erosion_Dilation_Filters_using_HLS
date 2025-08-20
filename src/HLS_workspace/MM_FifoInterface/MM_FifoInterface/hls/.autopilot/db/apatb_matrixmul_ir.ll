; ModuleID = '/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface/MM_FifoInterface/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind willreturn
declare void @llvm.sideeffect() #0

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_matrixmul_ir([3 x i8]* noalias nonnull "fpga.decayed.dim.hint"="3" "partition" %a, [3 x i8]* noalias nonnull "fpga.decayed.dim.hint"="3" "partition" %b, [3 x i16]* noalias nonnull "fpga.decayed.dim.hint"="3" %res) local_unnamed_addr #1 {
entry:
  %a_copy_0 = alloca [3 x i8], align 512
  %a_copy_1 = alloca [3 x i8], align 512
  %a_copy_2 = alloca [3 x i8], align 512
  %b_copy_0 = alloca [3 x i8], align 512
  %b_copy_1 = alloca [3 x i8], align 512
  %b_copy_2 = alloca [3 x i8], align 512
  %res_copy = alloca [3 x [3 x i16]], align 512
  %0 = bitcast [3 x i8]* %a to [3 x [3 x i8]]*
  %1 = bitcast [3 x i8]* %b to [3 x [3 x i8]]*
  %2 = bitcast [3 x i16]* %res to [3 x [3 x i16]]*
  call void @copy_in([3 x [3 x i8]]* nonnull %0, [3 x i8]* nonnull align 512 %a_copy_0, [3 x i8]* nonnull align 512 %a_copy_1, [3 x i8]* nonnull align 512 %a_copy_2, [3 x [3 x i8]]* nonnull %1, [3 x i8]* nonnull align 512 %b_copy_0, [3 x i8]* nonnull align 512 %b_copy_1, [3 x i8]* nonnull align 512 %b_copy_2, [3 x [3 x i16]]* nonnull %2, [3 x [3 x i16]]* nonnull align 512 %res_copy)
  %_0 = getelementptr [3 x i8], [3 x i8]* %a_copy_0, i64 0, i64 0
  %_1 = getelementptr [3 x i8], [3 x i8]* %a_copy_1, i64 0, i64 0
  %_2 = getelementptr [3 x i8], [3 x i8]* %a_copy_2, i64 0, i64 0
  %_01 = getelementptr [3 x i8], [3 x i8]* %b_copy_0, i64 0, i64 0
  %_12 = getelementptr [3 x i8], [3 x i8]* %b_copy_1, i64 0, i64 0
  %_23 = getelementptr [3 x i8], [3 x i8]* %b_copy_2, i64 0, i64 0
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i8* %_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i8* %_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i8* %_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i8* %_01, i32 998, i32 1, i32 0, i1 false) ], !dbg !392
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i8* %_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !392
  call void @llvm.sideeffect() #8 [ "xlx_array_partition"(i8* %_23, i32 998, i32 1, i32 0, i1 false) ], !dbg !392
  call void @apatb_matrixmul_hw([3 x i8]* %a_copy_0, [3 x i8]* %a_copy_1, [3 x i8]* %a_copy_2, [3 x i8]* %b_copy_0, [3 x i8]* %b_copy_1, [3 x i8]* %b_copy_2, [3 x [3 x i16]]* %res_copy)
  call void @copy_back([3 x [3 x i8]]* %0, [3 x i8]* %a_copy_0, [3 x i8]* %a_copy_1, [3 x i8]* %a_copy_2, [3 x [3 x i8]]* %1, [3 x i8]* %b_copy_0, [3 x i8]* %b_copy_1, [3 x i8]* %b_copy_2, [3 x [3 x i16]]* %2, [3 x [3 x i16]]* %res_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3a3i8([3 x [3 x i8]]* "orig.arg.no"="0" %dst, [3 x [3 x i8]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [3 x i8]]* %src, null
  %1 = icmp eq [3 x [3 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3i8([3 x i8]* %dst.addr, [3 x i8]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i8([3 x i8]* "orig.arg.no"="0" %dst, [3 x i8]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i8]* %src, null
  %1 = icmp eq [3 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i8], [3 x i8]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i8], [3 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  store i8 %3, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* noalias align 512 %dst, [3 x [3 x i16]]* noalias readonly %src) unnamed_addr #3 {
entry:
  %0 = icmp eq [3 x [3 x i16]]* %dst, null
  %1 = icmp eq [3 x [3 x i16]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3a3i16([3 x [3 x i16]]* nonnull %dst, [3 x [3 x i16]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3a3i16([3 x [3 x i16]]* %dst, [3 x [3 x i16]]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x [3 x i16]]* %src, null
  %1 = icmp eq [3 x [3 x i16]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x i16]], [3 x [3 x i16]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3i16([3 x i16]* %dst.addr, [3 x i16]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i16([3 x i16]* %dst, [3 x i16]* readonly %src, i64 %num) local_unnamed_addr #2 {
entry:
  %0 = icmp eq [3 x i16]* %src, null
  %1 = icmp eq [3 x i16]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x i16], [3 x i16]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x i16], [3 x i16]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i16, i16* %src.addr, align 2
  store i16 %3, i16* %dst.addr, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #4

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i8.5.6(i8* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, i8* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, i8* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x i8]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [3 x i8]* %src, null
  %1 = icmp eq i8* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %dst.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %dst.addr.exit ]
  %src.addr = getelementptr [3 x i8], [3 x i8]* %src, i64 0, i64 %for.loop.idx2
  %3 = load i8, i8* %src.addr, align 1
  switch i64 %for.loop.idx2, label %dst.addr.case.2 [
    i64 0, label %dst.addr.case.0
    i64 1, label %dst.addr.case.1
  ]

dst.addr.case.0:                                  ; preds = %for.loop
  store i8 %3, i8* %dst_0, align 1
  br label %dst.addr.exit

dst.addr.case.1:                                  ; preds = %for.loop
  store i8 %3, i8* %dst_1, align 1
  br label %dst.addr.exit

dst.addr.case.2:                                  ; preds = %for.loop
  %4 = icmp eq i64 %for.loop.idx2, 2
  call void @llvm.assume(i1 %4)
  store i8 %3, i8* %dst_2, align 1
  br label %dst.addr.exit

dst.addr.exit:                                    ; preds = %dst.addr.case.2, %dst.addr.case.1, %dst.addr.case.0
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %dst.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3a3i8.4.7([3 x i8]* "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [3 x i8]* "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [3 x i8]* "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x [3 x i8]]* readonly "orig.arg.no"="1" %src, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [3 x [3 x i8]]* %src, null
  %1 = icmp eq [3 x i8]* %dst_0, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr_0 = getelementptr [3 x i8], [3 x i8]* %dst_0, i64 0, i64 %for.loop.idx2
  %dst.addr_1 = getelementptr [3 x i8], [3 x i8]* %dst_1, i64 0, i64 %for.loop.idx2
  %dst.addr_2 = getelementptr [3 x i8], [3 x i8]* %dst_2, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %src, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3i8.5.6(i8* %dst.addr_0, i8* %dst.addr_1, i8* %dst.addr_2, [3 x i8]* %src.addr, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a3a3i8.3.8([3 x i8]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.0" %dst_0, [3 x i8]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.1" %dst_1, [3 x i8]* noalias align 512 "orig.arg.no"="0" "unpacked"="0.2" %dst_2, [3 x [3 x i8]]* noalias readonly "orig.arg.no"="1" %src) #3 {
entry:
  %0 = icmp eq [3 x i8]* %dst_0, null
  %1 = icmp eq [3 x [3 x i8]]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3a3i8.4.7([3 x i8]* nonnull %dst_0, [3 x i8]* %dst_1, [3 x i8]* %dst_2, [3 x [3 x i8]]* nonnull %src, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_in([3 x [3 x i8]]* noalias readonly "orig.arg.no"="0", [3 x i8]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [3 x i8]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [3 x i8]* noalias align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [3 x [3 x i8]]* noalias readonly "orig.arg.no"="2", [3 x i8]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [3 x i8]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [3 x i8]* noalias align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [3 x [3 x i16]]* noalias readonly "orig.arg.no"="4", [3 x [3 x i16]]* noalias align 512 "orig.arg.no"="5") #5 {
entry:
  call void @onebyonecpy_hls.p0a3a3i8.3.8([3 x i8]* align 512 %_0, [3 x i8]* align 512 %_1, [3 x i8]* align 512 %_2, [3 x [3 x i8]]* %0)
  call void @onebyonecpy_hls.p0a3a3i8.3.8([3 x i8]* align 512 %_01, [3 x i8]* align 512 %_12, [3 x i8]* align 512 %_23, [3 x [3 x i8]]* %1)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* align 512 %3, [3 x [3 x i16]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3i8.15.16([3 x i8]* "orig.arg.no"="0" %dst, i8* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, i8* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, i8* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq i8* %src_0, null
  %1 = icmp eq [3 x i8]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %src.addr.exit, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %src.addr.exit ]
  %dst.addr = getelementptr [3 x i8], [3 x i8]* %dst, i64 0, i64 %for.loop.idx2
  switch i64 %for.loop.idx2, label %src.addr.case.2 [
    i64 0, label %src.addr.case.0
    i64 1, label %src.addr.case.1
  ]

src.addr.case.0:                                  ; preds = %for.loop
  %_0 = load i8, i8* %src_0, align 1
  br label %src.addr.exit

src.addr.case.1:                                  ; preds = %for.loop
  %_1 = load i8, i8* %src_1, align 1
  br label %src.addr.exit

src.addr.case.2:                                  ; preds = %for.loop
  %3 = icmp eq i64 %for.loop.idx2, 2
  call void @llvm.assume(i1 %3)
  %_2 = load i8, i8* %src_2, align 1
  br label %src.addr.exit

src.addr.exit:                                    ; preds = %src.addr.case.2, %src.addr.case.1, %src.addr.case.0
  %4 = phi i8 [ %_0, %src.addr.case.0 ], [ %_1, %src.addr.case.1 ], [ %_2, %src.addr.case.2 ]
  store i8 %4, i8* %dst.addr, align 1
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %src.addr.exit, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @arraycpy_hls.p0a3a3i8.14.17([3 x [3 x i8]]* "orig.arg.no"="0" %dst, [3 x i8]* readonly "orig.arg.no"="1" "unpacked"="1.0" %src_0, [3 x i8]* readonly "orig.arg.no"="1" "unpacked"="1.1" %src_1, [3 x i8]* readonly "orig.arg.no"="1" "unpacked"="1.2" %src_2, i64 "orig.arg.no"="2" %num) #2 {
entry:
  %0 = icmp eq [3 x i8]* %src_0, null
  %1 = icmp eq [3 x [3 x i8]]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [3 x [3 x i8]], [3 x [3 x i8]]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr_0 = getelementptr [3 x i8], [3 x i8]* %src_0, i64 0, i64 %for.loop.idx2
  %src.addr_1 = getelementptr [3 x i8], [3 x i8]* %src_1, i64 0, i64 %for.loop.idx2
  %src.addr_2 = getelementptr [3 x i8], [3 x i8]* %src_2, i64 0, i64 %for.loop.idx2
  call void @arraycpy_hls.p0a3i8.15.16([3 x i8]* %dst.addr, i8* %src.addr_0, i8* %src.addr_1, i8* %src.addr_2, i64 3)
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @onebyonecpy_hls.p0a3a3i8.13.18([3 x [3 x i8]]* noalias "orig.arg.no"="0" %dst, [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %src_0, [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %src_1, [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %src_2) #3 {
entry:
  %0 = icmp eq [3 x [3 x i8]]* %dst, null
  %1 = icmp eq [3 x i8]* %src_0, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a3a3i8.14.17([3 x [3 x i8]]* nonnull %dst, [3 x i8]* nonnull %src_0, [3 x i8]* %src_1, [3 x i8]* %src_2, i64 3)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_out([3 x [3 x i8]]* noalias "orig.arg.no"="0", [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [3 x [3 x i8]]* noalias "orig.arg.no"="2", [3 x i8]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [3 x i8]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [3 x i8]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [3 x [3 x i16]]* noalias "orig.arg.no"="4", [3 x [3 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #6 {
entry:
  call void @onebyonecpy_hls.p0a3a3i8.13.18([3 x [3 x i8]]* %0, [3 x i8]* align 512 %_0, [3 x i8]* align 512 %_1, [3 x i8]* align 512 %_2)
  call void @onebyonecpy_hls.p0a3a3i8.13.18([3 x [3 x i8]]* %1, [3 x i8]* align 512 %_01, [3 x i8]* align 512 %_12, [3 x i8]* align 512 %_23)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* %2, [3 x [3 x i16]]* align 512 %3)
  ret void
}

declare void @apatb_matrixmul_hw([3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x [3 x i16]]*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal void @copy_back([3 x [3 x i8]]* noalias "orig.arg.no"="0", [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.0" %_0, [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.1" %_1, [3 x i8]* noalias readonly align 512 "orig.arg.no"="1" "unpacked"="1.2" %_2, [3 x [3 x i8]]* noalias "orig.arg.no"="2", [3 x i8]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.0" %_01, [3 x i8]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.1" %_12, [3 x i8]* noalias readonly align 512 "orig.arg.no"="3" "unpacked"="3.2" %_23, [3 x [3 x i16]]* noalias "orig.arg.no"="4", [3 x [3 x i16]]* noalias readonly align 512 "orig.arg.no"="5") #6 {
entry:
  call void @onebyonecpy_hls.p0a3a3i8.13.18([3 x [3 x i8]]* %0, [3 x i8]* align 512 %_0, [3 x i8]* align 512 %_1, [3 x i8]* align 512 %_2)
  call void @onebyonecpy_hls.p0a3a3i8.13.18([3 x [3 x i8]]* %1, [3 x i8]* align 512 %_01, [3 x i8]* align 512 %_12, [3 x i8]* align 512 %_23)
  call fastcc void @onebyonecpy_hls.p0a3a3i16([3 x [3 x i16]]* %2, [3 x [3 x i16]]* align 512 %3)
  ret void
}

define void @matrixmul_hw_stub_wrapper([3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x i8]*, [3 x [3 x i16]]*) #7 {
entry:
  %7 = alloca [3 x [3 x i8]]
  %8 = alloca [3 x [3 x i8]]
  call void @copy_out([3 x [3 x i8]]* %7, [3 x i8]* %0, [3 x i8]* %1, [3 x i8]* %2, [3 x [3 x i8]]* %8, [3 x i8]* %3, [3 x i8]* %4, [3 x i8]* %5, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %6)
  %9 = bitcast [3 x [3 x i8]]* %7 to [3 x i8]*
  %10 = bitcast [3 x [3 x i8]]* %8 to [3 x i8]*
  %11 = bitcast [3 x [3 x i16]]* %6 to [3 x i16]*
  call void @matrixmul_hw_stub([3 x i8]* %9, [3 x i8]* %10, [3 x i16]* %11)
  call void @copy_in([3 x [3 x i8]]* %7, [3 x i8]* %0, [3 x i8]* %1, [3 x i8]* %2, [3 x [3 x i8]]* %8, [3 x i8]* %3, [3 x i8]* %4, [3 x i8]* %5, [3 x [3 x i16]]* null, [3 x [3 x i16]]* %6)
  ret void
}

declare void @matrixmul_hw_stub([3 x i8]* noalias nonnull, [3 x i8]* noalias nonnull, [3 x i16]* noalias nonnull)

attributes #0 = { inaccessiblememonly nounwind willreturn }
attributes #1 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { nounwind willreturn }
attributes #5 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #6 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #7 = { "fpga.wrapper.func"="stub" }
attributes #8 = { inaccessiblememonly nounwind willreturn "xlx.source"="infer-from-pragma" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !14}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"0", [3 x [3 x i8]]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Complete", !"dim=2"}
!10 = !{!11, !12, !13}
!11 = !{!"0.0", [3 x i8]* null}
!12 = !{!"0.1", [3 x i8]* null}
!13 = !{!"0.2", [3 x i8]* null}
!14 = !{!15, !8, !17}
!15 = !{!16}
!16 = !{!"1", [3 x [3 x i8]]* null}
!17 = !{!18, !19, !20}
!18 = !{!"1.0", [3 x i8]* null}
!19 = !{!"1.1", [3 x i8]* null}
!20 = !{!"1.2", [3 x i8]* null}
!21 = !DILocation(line: 21, column: 9, scope: !22)
!22 = !DILexicalBlockFile(scope: !24, file: !23, discriminator: 0)
!23 = !DIFile(filename: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface/hls_config.cfg", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!24 = distinct !DISubprogram(name: "matrixmul", linkageName: "_Z9matrixmulPA3_cS0_PA3_s", scope: !25, file: !25, line: 4, type: !26, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !42, variables: !4)
!25 = !DIFile(filename: "../files/matrixmul.cpp", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !35, !38}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 24, elements: !33)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_a_t", file: !31, line: 16, baseType: !32)
!31 = !DIFile(filename: "../files/matrixmul.h", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{!34}
!34 = !DISubrange(count: 3)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !33)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "mat_b_t", file: !31, line: 17, baseType: !32)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 48, elements: !33)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "result_t", file: !31, line: 18, baseType: !41)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !43, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !44)
!43 = !DIFile(filename: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface/MM_FifoInterface/hls/.autopilot/db/matrixmul.pp.0.cpp", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!44 = !{!45, !53, !60, !62, !64, !68, !70, !72, !74, !76, !78, !80, !82, !87, !91, !93, !95, !100, !102, !104, !106, !108, !110, !112, !115, !118, !120, !124, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !153, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !191, !195, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !221, !225, !229, !231, !233, !235, !240, !244, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !277, !281, !285, !287, !289, !291, !297, !301, !305, !307, !309, !311, !313, !315, !317, !321, !325, !327, !329, !331, !333, !337, !341, !345, !347, !349, !351, !353, !355, !357, !361, !365, !369, !371, !375, !379, !381, !383, !385, !387, !389, !391}
!45 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !47, file: !52, line: 52)
!46 = !DINamespace(name: "std", scope: null)
!47 = !DISubprogram(name: "abs", scope: !48, file: !48, line: 840, type: !49, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!48 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !51}
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIFile(filename: "/home/jam/xilinx/Vitis_HLS/2024.1/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/std_abs.h", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!53 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !54, file: !59, line: 83)
!54 = !DISubprogram(name: "acos", scope: !55, file: !55, line: 53, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!55 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !58}
!58 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!59 = !DIFile(filename: "/home/jam/xilinx/Vitis_HLS/2024.1/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cmath", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !61, file: !59, line: 102)
!61 = !DISubprogram(name: "asin", scope: !55, file: !55, line: 55, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!62 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !63, file: !59, line: 121)
!63 = !DISubprogram(name: "atan", scope: !55, file: !55, line: 57, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!64 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !65, file: !59, line: 140)
!65 = !DISubprogram(name: "atan2", scope: !55, file: !55, line: 59, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!66 = !DISubroutineType(types: !67)
!67 = !{!58, !58, !58}
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !69, file: !59, line: 161)
!69 = !DISubprogram(name: "ceil", scope: !55, file: !55, line: 159, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!70 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !71, file: !59, line: 180)
!71 = !DISubprogram(name: "cos", scope: !55, file: !55, line: 62, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!72 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !73, file: !59, line: 199)
!73 = !DISubprogram(name: "cosh", scope: !55, file: !55, line: 71, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!74 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !75, file: !59, line: 218)
!75 = !DISubprogram(name: "exp", scope: !55, file: !55, line: 95, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !77, file: !59, line: 237)
!77 = !DISubprogram(name: "fabs", scope: !55, file: !55, line: 162, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !79, file: !59, line: 256)
!79 = !DISubprogram(name: "floor", scope: !55, file: !55, line: 165, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !81, file: !59, line: 275)
!81 = !DISubprogram(name: "fmod", scope: !55, file: !55, line: 168, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !83, file: !59, line: 296)
!83 = !DISubprogram(name: "frexp", scope: !55, file: !55, line: 98, type: !84, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!84 = !DISubroutineType(types: !85)
!85 = !{!58, !58, !86}
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!87 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !88, file: !59, line: 315)
!88 = !DISubprogram(name: "ldexp", scope: !55, file: !55, line: 101, type: !89, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!89 = !DISubroutineType(types: !90)
!90 = !{!58, !58, !51}
!91 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !92, file: !59, line: 334)
!92 = !DISubprogram(name: "log", scope: !55, file: !55, line: 104, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!93 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !94, file: !59, line: 353)
!94 = !DISubprogram(name: "log10", scope: !55, file: !55, line: 107, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !96, file: !59, line: 372)
!96 = !DISubprogram(name: "modf", scope: !55, file: !55, line: 110, type: !97, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!97 = !DISubroutineType(types: !98)
!98 = !{!58, !58, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !101, file: !59, line: 384)
!101 = !DISubprogram(name: "pow", scope: !55, file: !55, line: 140, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !103, file: !59, line: 421)
!103 = !DISubprogram(name: "sin", scope: !55, file: !55, line: 64, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !105, file: !59, line: 440)
!105 = !DISubprogram(name: "sinh", scope: !55, file: !55, line: 73, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !107, file: !59, line: 459)
!107 = !DISubprogram(name: "sqrt", scope: !55, file: !55, line: 143, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !109, file: !59, line: 478)
!109 = !DISubprogram(name: "tan", scope: !55, file: !55, line: 66, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !111, file: !59, line: 497)
!111 = !DISubprogram(name: "tanh", scope: !55, file: !55, line: 75, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !113, file: !59, line: 1065)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !114, line: 150, baseType: !58)
!114 = !DIFile(filename: "/usr/include/math.h", directory: "/home/jam/Downloads/HLS_Erosion_dilation/vitis_workspace/MM_FifoInterface")
!115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !116, file: !59, line: 1066)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !114, line: 149, baseType: !117)
!117 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !119, file: !59, line: 1069)
!119 = !DISubprogram(name: "acosh", scope: !55, file: !55, line: 85, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!120 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !121, file: !59, line: 1070)
!121 = !DISubprogram(name: "acoshf", scope: !55, file: !55, line: 85, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!122 = !DISubroutineType(types: !123)
!123 = !{!117, !117}
!124 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !125, file: !59, line: 1071)
!125 = !DISubprogram(name: "acoshl", scope: !55, file: !55, line: 85, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !128}
!128 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !130, file: !59, line: 1073)
!130 = !DISubprogram(name: "asinh", scope: !55, file: !55, line: 87, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !132, file: !59, line: 1074)
!132 = !DISubprogram(name: "asinhf", scope: !55, file: !55, line: 87, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !134, file: !59, line: 1075)
!134 = !DISubprogram(name: "asinhl", scope: !55, file: !55, line: 87, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !136, file: !59, line: 1077)
!136 = !DISubprogram(name: "atanh", scope: !55, file: !55, line: 89, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !138, file: !59, line: 1078)
!138 = !DISubprogram(name: "atanhf", scope: !55, file: !55, line: 89, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!139 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !140, file: !59, line: 1079)
!140 = !DISubprogram(name: "atanhl", scope: !55, file: !55, line: 89, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !142, file: !59, line: 1081)
!142 = !DISubprogram(name: "cbrt", scope: !55, file: !55, line: 152, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !144, file: !59, line: 1082)
!144 = !DISubprogram(name: "cbrtf", scope: !55, file: !55, line: 152, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !146, file: !59, line: 1083)
!146 = !DISubprogram(name: "cbrtl", scope: !55, file: !55, line: 152, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !148, file: !59, line: 1085)
!148 = !DISubprogram(name: "copysign", scope: !55, file: !55, line: 196, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !150, file: !59, line: 1086)
!150 = !DISubprogram(name: "copysignf", scope: !55, file: !55, line: 196, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!117, !117, !117}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !154, file: !59, line: 1087)
!154 = !DISubprogram(name: "copysignl", scope: !55, file: !55, line: 196, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!128, !128, !128}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !158, file: !59, line: 1089)
!158 = !DISubprogram(name: "erf", scope: !55, file: !55, line: 228, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !160, file: !59, line: 1090)
!160 = !DISubprogram(name: "erff", scope: !55, file: !55, line: 228, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !162, file: !59, line: 1091)
!162 = !DISubprogram(name: "erfl", scope: !55, file: !55, line: 228, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !164, file: !59, line: 1093)
!164 = !DISubprogram(name: "erfc", scope: !55, file: !55, line: 229, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !166, file: !59, line: 1094)
!166 = !DISubprogram(name: "erfcf", scope: !55, file: !55, line: 229, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !168, file: !59, line: 1095)
!168 = !DISubprogram(name: "erfcl", scope: !55, file: !55, line: 229, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !170, file: !59, line: 1097)
!170 = !DISubprogram(name: "exp2", scope: !55, file: !55, line: 130, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !172, file: !59, line: 1098)
!172 = !DISubprogram(name: "exp2f", scope: !55, file: !55, line: 130, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !174, file: !59, line: 1099)
!174 = !DISubprogram(name: "exp2l", scope: !55, file: !55, line: 130, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !176, file: !59, line: 1101)
!176 = !DISubprogram(name: "expm1", scope: !55, file: !55, line: 119, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !178, file: !59, line: 1102)
!178 = !DISubprogram(name: "expm1f", scope: !55, file: !55, line: 119, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !180, file: !59, line: 1103)
!180 = !DISubprogram(name: "expm1l", scope: !55, file: !55, line: 119, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !182, file: !59, line: 1105)
!182 = !DISubprogram(name: "fdim", scope: !55, file: !55, line: 326, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !184, file: !59, line: 1106)
!184 = !DISubprogram(name: "fdimf", scope: !55, file: !55, line: 326, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !186, file: !59, line: 1107)
!186 = !DISubprogram(name: "fdiml", scope: !55, file: !55, line: 326, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !188, file: !59, line: 1109)
!188 = !DISubprogram(name: "fma", scope: !55, file: !55, line: 335, type: !189, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!189 = !DISubroutineType(types: !190)
!190 = !{!58, !58, !58, !58}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !192, file: !59, line: 1110)
!192 = !DISubprogram(name: "fmaf", scope: !55, file: !55, line: 335, type: !193, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!193 = !DISubroutineType(types: !194)
!194 = !{!117, !117, !117, !117}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !196, file: !59, line: 1111)
!196 = !DISubprogram(name: "fmal", scope: !55, file: !55, line: 335, type: !197, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!197 = !DISubroutineType(types: !198)
!198 = !{!128, !128, !128, !128}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !200, file: !59, line: 1113)
!200 = !DISubprogram(name: "fmax", scope: !55, file: !55, line: 329, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !202, file: !59, line: 1114)
!202 = !DISubprogram(name: "fmaxf", scope: !55, file: !55, line: 329, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !204, file: !59, line: 1115)
!204 = !DISubprogram(name: "fmaxl", scope: !55, file: !55, line: 329, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!205 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !206, file: !59, line: 1117)
!206 = !DISubprogram(name: "fmin", scope: !55, file: !55, line: 332, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !208, file: !59, line: 1118)
!208 = !DISubprogram(name: "fminf", scope: !55, file: !55, line: 332, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !210, file: !59, line: 1119)
!210 = !DISubprogram(name: "fminl", scope: !55, file: !55, line: 332, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !212, file: !59, line: 1121)
!212 = !DISubprogram(name: "hypot", scope: !55, file: !55, line: 147, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !214, file: !59, line: 1122)
!214 = !DISubprogram(name: "hypotf", scope: !55, file: !55, line: 147, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!215 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !216, file: !59, line: 1123)
!216 = !DISubprogram(name: "hypotl", scope: !55, file: !55, line: 147, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !218, file: !59, line: 1125)
!218 = !DISubprogram(name: "ilogb", scope: !55, file: !55, line: 280, type: !219, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{!51, !58}
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !222, file: !59, line: 1126)
!222 = !DISubprogram(name: "ilogbf", scope: !55, file: !55, line: 280, type: !223, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!223 = !DISubroutineType(types: !224)
!224 = !{!51, !117}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !226, file: !59, line: 1127)
!226 = !DISubprogram(name: "ilogbl", scope: !55, file: !55, line: 280, type: !227, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!51, !128}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !230, file: !59, line: 1129)
!230 = !DISubprogram(name: "lgamma", scope: !55, file: !55, line: 230, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !232, file: !59, line: 1130)
!232 = !DISubprogram(name: "lgammaf", scope: !55, file: !55, line: 230, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !234, file: !59, line: 1131)
!234 = !DISubprogram(name: "lgammal", scope: !55, file: !55, line: 230, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !236, file: !59, line: 1134)
!236 = !DISubprogram(name: "llrint", scope: !55, file: !55, line: 316, type: !237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !58}
!239 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !241, file: !59, line: 1135)
!241 = !DISubprogram(name: "llrintf", scope: !55, file: !55, line: 316, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!242 = !DISubroutineType(types: !243)
!243 = !{!239, !117}
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !245, file: !59, line: 1136)
!245 = !DISubprogram(name: "llrintl", scope: !55, file: !55, line: 316, type: !246, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!246 = !DISubroutineType(types: !247)
!247 = !{!239, !128}
!248 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !249, file: !59, line: 1138)
!249 = !DISubprogram(name: "llround", scope: !55, file: !55, line: 322, type: !237, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !251, file: !59, line: 1139)
!251 = !DISubprogram(name: "llroundf", scope: !55, file: !55, line: 322, type: !242, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!252 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !253, file: !59, line: 1140)
!253 = !DISubprogram(name: "llroundl", scope: !55, file: !55, line: 322, type: !246, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !255, file: !59, line: 1143)
!255 = !DISubprogram(name: "log1p", scope: !55, file: !55, line: 122, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !257, file: !59, line: 1144)
!257 = !DISubprogram(name: "log1pf", scope: !55, file: !55, line: 122, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !259, file: !59, line: 1145)
!259 = !DISubprogram(name: "log1pl", scope: !55, file: !55, line: 122, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !261, file: !59, line: 1147)
!261 = !DISubprogram(name: "log2", scope: !55, file: !55, line: 133, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!262 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !263, file: !59, line: 1148)
!263 = !DISubprogram(name: "log2f", scope: !55, file: !55, line: 133, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !265, file: !59, line: 1149)
!265 = !DISubprogram(name: "log2l", scope: !55, file: !55, line: 133, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !267, file: !59, line: 1151)
!267 = !DISubprogram(name: "logb", scope: !55, file: !55, line: 125, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !269, file: !59, line: 1152)
!269 = !DISubprogram(name: "logbf", scope: !55, file: !55, line: 125, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !271, file: !59, line: 1153)
!271 = !DISubprogram(name: "logbl", scope: !55, file: !55, line: 125, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !273, file: !59, line: 1155)
!273 = !DISubprogram(name: "lrint", scope: !55, file: !55, line: 314, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!274 = !DISubroutineType(types: !275)
!275 = !{!276, !58}
!276 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !278, file: !59, line: 1156)
!278 = !DISubprogram(name: "lrintf", scope: !55, file: !55, line: 314, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!279 = !DISubroutineType(types: !280)
!280 = !{!276, !117}
!281 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !282, file: !59, line: 1157)
!282 = !DISubprogram(name: "lrintl", scope: !55, file: !55, line: 314, type: !283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!283 = !DISubroutineType(types: !284)
!284 = !{!276, !128}
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !286, file: !59, line: 1159)
!286 = !DISubprogram(name: "lround", scope: !55, file: !55, line: 320, type: !274, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !288, file: !59, line: 1160)
!288 = !DISubprogram(name: "lroundf", scope: !55, file: !55, line: 320, type: !279, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!289 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !290, file: !59, line: 1161)
!290 = !DISubprogram(name: "lroundl", scope: !55, file: !55, line: 320, type: !283, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !292, file: !59, line: 1163)
!292 = !DISubprogram(name: "nan", scope: !55, file: !55, line: 201, type: !293, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!293 = !DISubroutineType(types: !294)
!294 = !{!58, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !298, file: !59, line: 1164)
!298 = !DISubprogram(name: "nanf", scope: !55, file: !55, line: 201, type: !299, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!299 = !DISubroutineType(types: !300)
!300 = !{!117, !295}
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !302, file: !59, line: 1165)
!302 = !DISubprogram(name: "nanl", scope: !55, file: !55, line: 201, type: !303, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{!128, !295}
!305 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !306, file: !59, line: 1167)
!306 = !DISubprogram(name: "nearbyint", scope: !55, file: !55, line: 294, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !308, file: !59, line: 1168)
!308 = !DISubprogram(name: "nearbyintf", scope: !55, file: !55, line: 294, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!309 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !310, file: !59, line: 1169)
!310 = !DISubprogram(name: "nearbyintl", scope: !55, file: !55, line: 294, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !312, file: !59, line: 1171)
!312 = !DISubprogram(name: "nextafter", scope: !55, file: !55, line: 259, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!313 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !314, file: !59, line: 1172)
!314 = !DISubprogram(name: "nextafterf", scope: !55, file: !55, line: 259, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!315 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !316, file: !59, line: 1173)
!316 = !DISubprogram(name: "nextafterl", scope: !55, file: !55, line: 259, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!317 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !318, file: !59, line: 1175)
!318 = !DISubprogram(name: "nexttoward", scope: !55, file: !55, line: 261, type: !319, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!319 = !DISubroutineType(types: !320)
!320 = !{!58, !58, !128}
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !322, file: !59, line: 1176)
!322 = !DISubprogram(name: "nexttowardf", scope: !55, file: !55, line: 261, type: !323, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!323 = !DISubroutineType(types: !324)
!324 = !{!117, !117, !128}
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !326, file: !59, line: 1177)
!326 = !DISubprogram(name: "nexttowardl", scope: !55, file: !55, line: 261, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!327 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !328, file: !59, line: 1179)
!328 = !DISubprogram(name: "remainder", scope: !55, file: !55, line: 272, type: !66, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!329 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !330, file: !59, line: 1180)
!330 = !DISubprogram(name: "remainderf", scope: !55, file: !55, line: 272, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !332, file: !59, line: 1181)
!332 = !DISubprogram(name: "remainderl", scope: !55, file: !55, line: 272, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !334, file: !59, line: 1183)
!334 = !DISubprogram(name: "remquo", scope: !55, file: !55, line: 307, type: !335, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!335 = !DISubroutineType(types: !336)
!336 = !{!58, !58, !58, !86}
!337 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !338, file: !59, line: 1184)
!338 = !DISubprogram(name: "remquof", scope: !55, file: !55, line: 307, type: !339, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!339 = !DISubroutineType(types: !340)
!340 = !{!117, !117, !117, !86}
!341 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !342, file: !59, line: 1185)
!342 = !DISubprogram(name: "remquol", scope: !55, file: !55, line: 307, type: !343, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{!128, !128, !128, !86}
!345 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !346, file: !59, line: 1187)
!346 = !DISubprogram(name: "rint", scope: !55, file: !55, line: 256, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !348, file: !59, line: 1188)
!348 = !DISubprogram(name: "rintf", scope: !55, file: !55, line: 256, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !350, file: !59, line: 1189)
!350 = !DISubprogram(name: "rintl", scope: !55, file: !55, line: 256, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !352, file: !59, line: 1191)
!352 = !DISubprogram(name: "round", scope: !55, file: !55, line: 298, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !354, file: !59, line: 1192)
!354 = !DISubprogram(name: "roundf", scope: !55, file: !55, line: 298, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !356, file: !59, line: 1193)
!356 = !DISubprogram(name: "roundl", scope: !55, file: !55, line: 298, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!357 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !358, file: !59, line: 1195)
!358 = !DISubprogram(name: "scalbln", scope: !55, file: !55, line: 290, type: !359, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!359 = !DISubroutineType(types: !360)
!360 = !{!58, !58, !276}
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !362, file: !59, line: 1196)
!362 = !DISubprogram(name: "scalblnf", scope: !55, file: !55, line: 290, type: !363, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DISubroutineType(types: !364)
!364 = !{!117, !117, !276}
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !366, file: !59, line: 1197)
!366 = !DISubprogram(name: "scalblnl", scope: !55, file: !55, line: 290, type: !367, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!367 = !DISubroutineType(types: !368)
!368 = !{!128, !128, !276}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !370, file: !59, line: 1199)
!370 = !DISubprogram(name: "scalbn", scope: !55, file: !55, line: 276, type: !89, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !372, file: !59, line: 1200)
!372 = !DISubprogram(name: "scalbnf", scope: !55, file: !55, line: 276, type: !373, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DISubroutineType(types: !374)
!374 = !{!117, !117, !51}
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !376, file: !59, line: 1201)
!376 = !DISubprogram(name: "scalbnl", scope: !55, file: !55, line: 276, type: !377, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DISubroutineType(types: !378)
!378 = !{!128, !128, !51}
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !380, file: !59, line: 1203)
!380 = !DISubprogram(name: "tgamma", scope: !55, file: !55, line: 235, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !382, file: !59, line: 1204)
!382 = !DISubprogram(name: "tgammaf", scope: !55, file: !55, line: 235, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !384, file: !59, line: 1205)
!384 = !DISubprogram(name: "tgammal", scope: !55, file: !55, line: 235, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!385 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !386, file: !59, line: 1207)
!386 = !DISubprogram(name: "trunc", scope: !55, file: !55, line: 302, type: !56, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !388, file: !59, line: 1208)
!388 = !DISubprogram(name: "truncf", scope: !55, file: !55, line: 302, type: !122, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !46, entity: !390, file: !59, line: 1209)
!390 = !DISubprogram(name: "truncl", scope: !55, file: !55, line: 302, type: !126, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!391 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !42, entity: !46, file: !31, line: 6)
!392 = !DILocation(line: 20, column: 9, scope: !22)
