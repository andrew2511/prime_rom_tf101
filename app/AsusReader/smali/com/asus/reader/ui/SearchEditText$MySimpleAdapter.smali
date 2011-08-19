.class final Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchEditText.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/SearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MySimpleAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mDropDownResource:I

.field private mFilter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;

.field private mFrom:[Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResource:I

.field private mTo:[I

.field private mUnfilteredData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 435
    iput-object p2, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mData:Ljava/util/List;

    .line 436
    iput p3, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mDropDownResource:I

    iput p3, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mResource:I

    .line 437
    iput-object p4, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 438
    iput-object p5, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mTo:[I

    .line 439
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 440
    return-void
.end method

.method static synthetic access$2300(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mUnfilteredData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 404
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mData:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mTo:[I

    return-object v0
.end method

.method static synthetic access$2600(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mFrom:[Ljava/lang/String;

    return-object v0
.end method

.method private bindView(ILandroid/view/View;)V
    .locals 13
    .parameter "position"
    .parameter "view"

    .prologue
    .line 501
    iget-object v10, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 502
    .local v4, dataSet:Ljava/util/Map;
    if-nez v4, :cond_1

    .line 559
    :cond_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mViewBinder:Landroid/widget/SimpleAdapter$ViewBinder;

    .line 507
    .local v0, binder:Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v5, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 508
    .local v5, from:[Ljava/lang/String;
    iget-object v8, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mTo:[I

    .line 509
    .local v8, to:[I
    array-length v2, v8

    .line 511
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 512
    aget v10, v8, v6

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 513
    .local v9, v:Landroid/view/View;
    if-eqz v9, :cond_4

    .line 514
    aget-object v10, v5, v6

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 515
    .local v3, data:Ljava/lang/Object;
    if-nez v3, :cond_5

    const-string v10, ""

    move-object v7, v10

    .line 517
    .local v7, text:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_2

    .line 518
    const-string v7, ""

    .line 521
    :cond_2
    const/4 v1, 0x0

    .line 522
    .local v1, bound:Z
    if-eqz v0, :cond_3

    .line 523
    invoke-interface {v0, v9, v3, v7}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    .line 526
    :cond_3
    if-nez v1, :cond_4

    .line 527
    instance-of v10, v9, Landroid/widget/Checkable;

    if-eqz v10, :cond_9

    .line 528
    instance-of v10, v3, Ljava/lang/Boolean;

    if-eqz v10, :cond_6

    .line 529
    check-cast v9, Landroid/widget/Checkable;

    .end local v9           #v:Landroid/view/View;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #data:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v9, v10}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 511
    .end local v1           #bound:Z
    .end local v7           #text:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 515
    .restart local v3       #data:Ljava/lang/Object;
    .restart local v9       #v:Landroid/view/View;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    goto :goto_1

    .line 530
    .restart local v1       #bound:Z
    .restart local v7       #text:Ljava/lang/String;
    :cond_6
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_7

    .line 533
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 535
    .restart local v9       #v:Landroid/view/View;
    :cond_7
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " should be bound to a Boolean, not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v3, :cond_8

    const-string v12, "<unknown type>"

    :goto_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    goto :goto_3

    .line 539
    :cond_9
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_b

    .line 542
    instance-of v10, v3, Ljava/lang/CharSequence;

    if-eqz v10, :cond_a

    .line 543
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    check-cast v3, Ljava/lang/CharSequence;

    .end local v3           #data:Ljava/lang/Object;
    invoke-virtual {p0, v9, v3}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 545
    .restart local v3       #data:Ljava/lang/Object;
    .restart local v9       #v:Landroid/view/View;
    :cond_a
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 546
    .restart local v9       #v:Landroid/view/View;
    :cond_b
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_d

    .line 547
    instance-of v10, v3, Ljava/lang/Integer;

    if-eqz v10, :cond_c

    .line 548
    check-cast v9, Landroid/widget/ImageView;

    .end local v9           #v:Landroid/view/View;
    check-cast v3, Ljava/lang/Integer;

    .end local v3           #data:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 550
    .restart local v3       #data:Ljava/lang/Object;
    .restart local v9       #v:Landroid/view/View;
    :cond_c
    check-cast v9, Landroid/widget/ImageView;

    .end local v9           #v:Landroid/view/View;
    invoke-virtual {p0, v9, v7}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 553
    .restart local v9       #v:Landroid/view/View;
    :cond_d
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " view that can be bounds by this SimpleAdapter"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method private createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 474
    if-nez p2, :cond_0

    .line 475
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 480
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->bindView(ILandroid/view/View;)V

    .line 482
    return-object v0

    .line 477
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 497
    iget v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mDropDownResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mFilter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;

    if-nez v0, :cond_0

    .line 644
    new-instance v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;-><init>(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;Lcom/asus/reader/ui/SearchEditText$1;)V

    iput-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mFilter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mFilter:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 461
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 468
    iget v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->mResource:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->createViewFromResource(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "v"
    .parameter "value"

    .prologue
    .line 598
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .parameter "v"
    .parameter "value"

    .prologue
    .line 620
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 622
    .local v0, nfe:Ljava/lang/NumberFormatException;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "v"
    .parameter "text"

    .prologue
    .line 639
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "v"
    .parameter "text"

    .prologue
    .line 635
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    return-void
.end method
