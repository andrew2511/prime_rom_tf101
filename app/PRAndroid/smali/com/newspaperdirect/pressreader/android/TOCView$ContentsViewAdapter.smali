.class Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "TOCView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/TOCView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsViewAdapter"
.end annotation


# instance fields
.field private mSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/layout/Page;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/TOCView;


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V
    .locals 4
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    .line 344
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 345
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;->mSections:Ljava/util/List;

    .line 346
    const-string v1, ""

    .line 347
    .local v1, section:Ljava/lang/String;
    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/TOCView;->access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 348
    .local v0, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getSection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getSection()Ljava/lang/String;

    move-result-object v1

    .line 350
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;->mSections:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;->mSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;->mSections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 363
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 368
    if-nez p2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, result:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;->mSections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    .line 373
    .local v0, page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    const v2, 0x7f0c0008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    const v2, 0x7f0c0009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getSection()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-object v1

    .line 371
    .end local v0           #page:Lcom/newspaperdirect/pressreader/android/core/layout/Page;
    .end local v1           #result:Landroid/view/View;
    .restart local p0
    :cond_0
    move-object v1, p2

    .restart local v1       #result:Landroid/view/View;
    goto :goto_0
.end method
