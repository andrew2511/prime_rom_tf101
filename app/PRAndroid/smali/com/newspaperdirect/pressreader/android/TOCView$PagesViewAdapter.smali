.class Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "TOCView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/TOCView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagesViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/TOCView;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;)Lcom/newspaperdirect/pressreader/android/TOCView;
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    return-object v0
.end method

.method private setThumbnailBitmap(Landroid/view/View;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V
    .locals 3
    .parameter "parentView"
    .parameter "img"
    .parameter "page"

    .prologue
    .line 334
    invoke-virtual {p3}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 335
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 336
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$2(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-direct {v1, v2, p3, p2, p1}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;Lcom/newspaperdirect/pressreader/android/core/layout/Page;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->addTask(Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;)V

    .line 337
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$1(Lcom/newspaperdirect/pressreader/android/TOCView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 229
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 233
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v28

    const v29, 0x7f030016

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p3

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 240
    .local v19, result:Landroid/widget/LinearLayout;
    const/16 v28, 0x0

    const/16 v29, 0x4

    const/16 v30, 0x0

    const/16 v31, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 253
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/Display;->getWidth()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$1(Lcom/newspaperdirect/pressreader/android/TOCView;)I

    move-result v29

    div-int v9, v28, v29

    .line 254
    .local v9, itemWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$1(Lcom/newspaperdirect/pressreader/android/TOCView;)I

    move-result v28

    mul-int v28, v28, p1

    mul-int/lit8 v28, v28, 0x2

    const/16 v29, 0x1

    sub-int v18, v28, v29

    .line 255
    .local v18, pageIdx:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 256
    const/4 v8, 0x0

    .local v8, itemIdx:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$1(Lcom/newspaperdirect/pressreader/android/TOCView;)I

    move-result v28

    move v0, v8

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 330
    return-object v19

    .line 243
    .end local v8           #itemIdx:I
    .end local v9           #itemWidth:I
    .end local v18           #pageIdx:I
    .end local v19           #result:Landroid/widget/LinearLayout;
    :cond_0
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    .line 244
    .restart local v19       #result:Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v27

    .line 245
    .local v27, tag:Ljava/lang/Object;
    if-eqz v27, :cond_1

    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 246
    check-cast v27, Ljava/lang/Integer;

    .end local v27           #tag:Ljava/lang/Object;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 247
    .local v6, idx:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$1(Lcom/newspaperdirect/pressreader/android/TOCView;)I

    move-result v28

    mul-int/lit8 v28, v28, 0x2

    move v0, v5

    move/from16 v1, v28

    if-lt v0, v1, :cond_2

    .line 251
    .end local v5           #i:I
    .end local v6           #idx:I
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->removeAllViews()V

    goto :goto_0

    .line 248
    .restart local v5       #i:I
    .restart local v6       #idx:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$2(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    move-result-object v28

    add-int v29, v6, v5

    const/16 v30, 0x1

    sub-int v29, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->removeTask(ILandroid/view/View;)V

    .line 247
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 257
    .end local v5           #i:I
    .end local v6           #idx:I
    .restart local v8       #itemIdx:I
    .restart local v9       #itemWidth:I
    .restart local v18       #pageIdx:I
    :cond_3
    const/4 v11, 0x0

    .line 258
    .local v11, leftPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    if-ltz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #leftPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    check-cast v11, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 259
    .restart local v11       #leftPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    :cond_4
    add-int/lit8 v18, v18, 0x1

    .line 260
    const/16 v22, 0x0

    .line 261
    .local v22, rightPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    if-ltz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #rightPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    check-cast v22, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 262
    .restart local v22       #rightPage:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    :cond_5
    add-int/lit8 v18, v18, 0x1

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v28

    const v29, 0x7f030015

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p3

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 264
    .local v7, item:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move v0, v9

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 265
    move-object/from16 v0, v19

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    if-nez v11, :cond_7

    if-nez v22, :cond_7

    .line 267
    const/16 v28, 0x4

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 270
    :cond_7
    new-instance v16, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter$1;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;)V

    .line 277
    .local v16, listener:Landroid/view/View$OnClickListener;
    const v28, 0x7f0c0051

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 278
    .local v13, leftPagePanel:Landroid/widget/LinearLayout;
    const v28, 0x7f0c0052

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 279
    .local v14, leftPageThumbnail:Landroid/widget/ImageView;
    if-nez v11, :cond_c

    const/16 v28, 0x4

    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    :goto_4
    const v28, 0x7f0c0054

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout;

    .line 289
    .local v24, rightPagePanel:Landroid/widget/LinearLayout;
    const v28, 0x7f0c0055

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    .line 290
    .local v25, rightPageThumbnail:Landroid/widget/ImageView;
    if-nez v22, :cond_d

    const/16 v28, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v28

    sub-int v28, v9, v28

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual {v14}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual {v14}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v17, v28, 0x2

    .line 300
    .local v17, lwidth:I
    const/4 v15, 0x0

    .line 301
    .local v15, lheight:I
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v28, v0

    mul-int v28, v28, v17

    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v29, v0

    div-int v15, v28, v29

    .line 302
    :cond_8
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v28

    sub-int v28, v9, v28

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    div-int/lit8 v26, v28, 0x2

    .line 303
    .local v26, rwidth:I
    const/16 v20, 0x0

    .line 304
    .local v20, rheight:I
    if-eqz v22, :cond_9

    invoke-virtual/range {v22 .. v22}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    move/from16 v28, v0

    mul-int v28, v28, v26

    invoke-virtual/range {v22 .. v22}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getRect()Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    move/from16 v29, v0

    div-int v20, v28, v29

    .line 305
    :cond_9
    move v0, v15

    move/from16 v1, v20

    if-le v0, v1, :cond_e

    sub-int v28, v15, v20

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    move/from16 v20, v15

    .line 307
    :cond_a
    :goto_6
    move/from16 v0, v20

    move v1, v15

    if-le v0, v1, :cond_f

    if-lez v15, :cond_f

    sub-int v28, v20, v15

    move/from16 v10, v28

    .line 308
    .local v10, leftPaddingTop:I
    :goto_7
    move v0, v15

    move/from16 v1, v20

    if-le v0, v1, :cond_10

    if-lez v20, :cond_10

    sub-int v28, v15, v20

    move/from16 v21, v28

    .line 309
    .local v21, rightPaddingTop:I
    :goto_8
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move/from16 v0, v17

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 310
    if-eqz v11, :cond_b

    .line 311
    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move v0, v15

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v0, v13

    move/from16 v1, v28

    move v2, v10

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 313
    if-nez v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_0

    invoke-static/range {v28 .. v29}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$3(Lcom/newspaperdirect/pressreader/android/TOCView;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_b
    :goto_9
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 320
    if-eqz v22, :cond_6

    .line 321
    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move/from16 v0, v20

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 322
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v21

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 323
    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_1

    invoke-static/range {v28 .. v29}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$3(Lcom/newspaperdirect/pressreader/android/TOCView;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 281
    .end local v10           #leftPaddingTop:I
    .end local v15           #lheight:I
    .end local v17           #lwidth:I
    .end local v20           #rheight:I
    .end local v21           #rightPaddingTop:I
    .end local v24           #rightPagePanel:Landroid/widget/LinearLayout;
    .end local v25           #rightPageThumbnail:Landroid/widget/ImageView;
    .end local v26           #rwidth:I
    :cond_c
    const/16 v28, 0x0

    move-object v0, v13

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 282
    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object v0, v13

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 283
    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v28, 0x7f0c0053

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 285
    .local v12, leftPageName:Landroid/widget/TextView;
    invoke-virtual {v11}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getName()Ljava/lang/String;

    move-result-object v28

    move-object v0, v12

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v14

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->setThumbnailBitmap(Landroid/view/View;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto/16 :goto_4

    .line 292
    .end local v12           #leftPageName:Landroid/widget/TextView;
    .restart local v24       #rightPagePanel:Landroid/widget/LinearLayout;
    .restart local v25       #rightPageThumbnail:Landroid/widget/ImageView;
    :cond_d
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    invoke-virtual/range {v22 .. v22}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 294
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v28, 0x7f0c0056

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    .line 296
    .local v23, rightPageName:Landroid/widget/TextView;
    invoke-virtual/range {v22 .. v22}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->setThumbnailBitmap(Landroid/view/View;Landroid/widget/ImageView;Lcom/newspaperdirect/pressreader/android/core/layout/Page;)V

    goto/16 :goto_5

    .line 306
    .end local v23           #rightPageName:Landroid/widget/TextView;
    .restart local v15       #lheight:I
    .restart local v17       #lwidth:I
    .restart local v20       #rheight:I
    .restart local v26       #rwidth:I
    :cond_e
    move/from16 v0, v20

    move v1, v15

    if-le v0, v1, :cond_a

    sub-int v28, v20, v15

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    move/from16 v15, v20

    goto/16 :goto_6

    .line 307
    :cond_f
    const/16 v28, 0x0

    move/from16 v10, v28

    goto/16 :goto_7

    .line 308
    .restart local v10       #leftPaddingTop:I
    :cond_10
    const/16 v28, 0x0

    move/from16 v21, v28

    goto/16 :goto_8

    .line 315
    .restart local v21       #rightPaddingTop:I
    :cond_11
    move v0, v15

    move/from16 v1, v20

    if-le v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_2

    invoke-static/range {v28 .. v29}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$3(Lcom/newspaperdirect/pressreader/android/TOCView;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 316
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_3

    invoke-static/range {v28 .. v29}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$3(Lcom/newspaperdirect/pressreader/android/TOCView;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object v0, v14

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 325
    :cond_13
    move/from16 v0, v20

    move v1, v15

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_4

    invoke-static/range {v28 .. v29}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$3(Lcom/newspaperdirect/pressreader/android/TOCView;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 326
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    move-object/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    fill-array-data v29, :array_5

    invoke-static/range {v28 .. v29}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$3(Lcom/newspaperdirect/pressreader/android/TOCView;[F)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 313
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    .line 323
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    .line 315
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    .line 316
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
    .end array-data

    .line 325
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 326
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
