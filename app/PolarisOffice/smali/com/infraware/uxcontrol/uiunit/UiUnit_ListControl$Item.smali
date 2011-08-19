.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;
.super Ljava/lang/Object;
.source "UiUnit_ListControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public m_bIsChecked:Z

.field public m_bIsEnable:Z

.field public m_nCheckedResourceId:I

.field public m_nDisableResourceId:I

.field public m_nImageResourceId:I

.field public m_nOriginColor:I

.field public m_strComment:Ljava/lang/String;

.field public m_strName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "a_strName"

    .prologue
    .line 341
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 342
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "a_strName"
    .parameter "a_nImageResourceId"

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "a_strName"
    .parameter "a_strComment"

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "a_strName"
    .parameter "a_strComment"
    .parameter "a_nImageResourceId"

    .prologue
    const/4 v1, 0x0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    .line 321
    iput v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nCheckedResourceId:I

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nOriginColor:I

    .line 323
    iput-boolean v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsChecked:Z

    .line 327
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strName:Ljava/lang/String;

    .line 328
    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_strComment:Ljava/lang/String;

    .line 329
    iput p3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nImageResourceId:I

    .line 330
    return-void
.end method

.method public static createFromArrays(Landroid/app/Activity;III)[Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;
    .locals 12
    .parameter "a_oActivity"
    .parameter "a_nNameStringArrayId"
    .parameter "a_nCommentStringArrayId"
    .parameter "a_nImageArrayId"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x0

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, arrItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 372
    .local v3, aszName:[Ljava/lang/String;
    move-object v0, v8

    check-cast v0, [Ljava/lang/String;

    move-object v2, v0

    .line 373
    .local v2, aszComment:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 375
    .local v5, oImageArray:Landroid/content/res/TypedArray;
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 379
    :cond_0
    if-eqz p2, :cond_1

    .line 380
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 383
    :cond_1
    if-eqz p3, :cond_2

    .line 384
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 387
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #arrItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    array-length v9, v3

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .restart local v1       #arrItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v9, v3

    if-lt v4, v9, :cond_4

    .line 395
    if-eqz v5, :cond_3

    .line 396
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    return-object p0

    .line 390
    .restart local p0
    :cond_4
    if-nez v2, :cond_5

    move-object v7, v8

    .line 391
    .local v7, szComment:Ljava/lang/String;
    :goto_1
    if-nez v5, :cond_6

    move v6, v11

    .line 392
    .local v6, oImageId:I
    :goto_2
    new-instance v9, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;

    aget-object v10, v3, v4

    invoke-direct {v9, v10, v7, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 390
    .end local v6           #oImageId:I
    .end local v7           #szComment:Ljava/lang/String;
    :cond_5
    aget-object v9, v2, v4

    move-object v7, v9

    goto :goto_1

    .line 391
    .restart local v7       #szComment:Ljava/lang/String;
    :cond_6
    invoke-virtual {v5, v4, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    move v6, v9

    goto :goto_2
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 0
    .parameter "a_bChecked"

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsChecked:Z

    .line 357
    return-void
.end method

.method public setCheckedResource(I)V
    .locals 0
    .parameter "a_nCheckedResourceId"

    .prologue
    .line 351
    iput p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_nCheckedResourceId:I

    .line 352
    return-void
.end method

.method public setEnable(Z)V
    .locals 0
    .parameter "a_bEnable"

    .prologue
    .line 346
    iput-boolean p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_ListControl$Item;->m_bIsEnable:Z

    .line 347
    return-void
.end method
