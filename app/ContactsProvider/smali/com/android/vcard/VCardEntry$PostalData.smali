.class public Lcom/android/vcard/VCardEntry$PostalData;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PostalData"
.end annotation


# instance fields
.field private final dataArray:[Ljava/lang/String;

.field public isPrimary:Z

.field public final label:Ljava/lang/String;

.field public final type:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 197
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$PostalData;

    if-nez v2, :cond_0

    move v2, v4

    .line 201
    :goto_0
    return v2

    .line 200
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/vcard/VCardEntry$PostalData;

    move-object v1, v0

    .line 201
    .local v1, postalData:Lcom/android/vcard/VCardEntry$PostalData;
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$PostalData;->dataArray:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->type:I

    iget v3, v1, Lcom/android/vcard/VCardEntry$PostalData;->type:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->type:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    if-ne v2, v3, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PostalData;->isPrimary:Z

    iget-boolean v3, v1, Lcom/android/vcard/VCardEntry$PostalData;->isPrimary:Z

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 243
    const-string v0, "type: %d, label: %s, isPrimary: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PostalData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
