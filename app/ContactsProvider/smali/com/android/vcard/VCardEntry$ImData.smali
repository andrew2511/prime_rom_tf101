.class public Lcom/android/vcard/VCardEntry$ImData;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImData"
.end annotation


# instance fields
.field public final customProtocol:Ljava/lang/String;

.field public final data:Ljava/lang/String;

.field public final isPrimary:Z

.field public final protocol:I

.field public final type:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 335
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$ImData;

    if-nez v2, :cond_0

    move v2, v4

    .line 339
    :goto_0
    return v2

    .line 338
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/vcard/VCardEntry$ImData;

    move-object v1, v0

    .line 339
    .local v1, imData:Lcom/android/vcard/VCardEntry$ImData;
    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->type:I

    iget v3, v1, Lcom/android/vcard/VCardEntry$ImData;->type:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/android/vcard/VCardEntry$ImData;->protocol:I

    iget v3, v1, Lcom/android/vcard/VCardEntry$ImData;->protocol:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$ImData;->isPrimary:Z

    iget-boolean v3, v1, Lcom/android/vcard/VCardEntry$ImData;->isPrimary:Z

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/android/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, v1, Lcom/android/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    const-string v0, "type: %d, protocol: %d, custom_protcol: %s, data: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/vcard/VCardEntry$ImData;->protocol:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$ImData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
