.class public Lcom/android/vcard/VCardEntry$PhoneData;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneData"
.end annotation


# instance fields
.field public final data:Ljava/lang/String;

.field public isPrimary:Z

.field public final label:Ljava/lang/String;

.field public final type:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 96
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$PhoneData;

    if-nez v2, :cond_0

    move v2, v4

    .line 100
    :goto_0
    return v2

    .line 99
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/vcard/VCardEntry$PhoneData;

    move-object v1, v0

    .line 100
    .local v1, phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    iget v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->type:I

    iget v3, v1, Lcom/android/vcard/VCardEntry$PhoneData;->type:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary:Z

    iget-boolean v3, v1, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary:Z

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 106
    const-string v0, "type: %d, data: %s, label: %s, isPrimary: %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$PhoneData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
