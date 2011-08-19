.class public Lcom/android/contacts/model/AccountType$EditType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditType"
.end annotation


# instance fields
.field public customColumn:Ljava/lang/String;

.field public labelRes:I

.field public rawValue:I

.field public secondary:Z

.field public specificMax:I

.field public unspecifiedType:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "rawValue"
    .parameter "labelRes"

    .prologue
    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    .line 263
    iput p2, p0, Lcom/android/contacts/model/AccountType$EditType;->labelRes:I

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 265
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 289
    instance-of v2, p1, Lcom/android/contacts/model/AccountType$EditType;

    if-eqz v2, :cond_1

    .line 290
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    move-object v1, v0

    .line 291
    .local v1, other:Lcom/android/contacts/model/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    iget v3, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 293
    .end local v1           #other:Lcom/android/contacts/model/AccountType$EditType;
    :goto_0
    return v2

    .restart local v1       #other:Lcom/android/contacts/model/AccountType$EditType;
    :cond_0
    move v2, v4

    .line 291
    goto :goto_0

    .end local v1           #other:Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    move v2, v4

    .line 293
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    return v0
.end method

.method public setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "customColumn"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "secondary"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    .line 269
    return-object p0
.end method

.method public setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "specificMax"

    .prologue
    .line 273
    iput p1, p0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 274
    return-object p0
.end method

.method public setUnspecifiedType(Z)Lcom/android/contacts/model/AccountType$EditType;
    .locals 0
    .parameter "unspecifiedType"

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/contacts/model/AccountType$EditType;->unspecifiedType:Z

    .line 284
    return-object p0
.end method
