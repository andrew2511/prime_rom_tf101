.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;
.super Ljava/lang/Object;
.source "UiUnit_GridControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public m_bIsSelected:Z

.field public m_nImageResourceId:I

.field public m_strComment:Ljava/lang/String;

.field public m_strName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "a_strName"

    .prologue
    .line 269
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "a_strName"
    .parameter "a_nImageResourceId"

    .prologue
    .line 265
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "a_strName"
    .parameter "a_strComment"

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "a_strName"
    .parameter "a_strComment"
    .parameter "a_nImageResourceId"

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_bIsSelected:Z

    .line 255
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strName:Ljava/lang/String;

    .line 256
    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_strComment:Ljava/lang/String;

    .line 257
    iput p3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_nImageResourceId:I

    .line 258
    return-void
.end method

.method public static createFromArrays(Landroid/app/Activity;II)[Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;
    .locals 8
    .parameter "a_oActivity"
    .parameter "a_nNameStringArrayId"
    .parameter "a_nImageArrayId"

    .prologue
    const/4 v7, 0x0

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, arrItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    .line 291
    .local v1, aszName:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 293
    .local v3, oImageArray:Landroid/content/res/TypedArray;
    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 297
    :cond_0
    if-eqz p2, :cond_1

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 301
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #arrItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    array-length v5, v1

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    .restart local v0       #arrItemArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_3

    .line 308
    if-eqz v3, :cond_2

    .line 309
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    return-object p0

    .line 304
    .restart local p0
    :cond_3
    if-nez v3, :cond_4

    move v4, v7

    .line 305
    .local v4, oImageId:I
    :goto_1
    new-instance v5, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;

    aget-object v6, v1, v2

    invoke-direct {v5, v6, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v4           #oImageId:I
    :cond_4
    invoke-virtual {v3, v2, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move v4, v5

    goto :goto_1
.end method


# virtual methods
.method public setItemSelected(Z)V
    .locals 0
    .parameter "a_bSelected"

    .prologue
    .line 274
    iput-boolean p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_GridControl$Item;->m_bIsSelected:Z

    .line 275
    return-void
.end method
