.class public Lcom/android/vcard/VCardEntry$OrganizationData;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrganizationData"
.end annotation


# instance fields
.field public companyName:Ljava/lang/String;

.field public departmentName:Ljava/lang/String;

.field public isPrimary:Z

.field public titleName:Ljava/lang/String;

.field public final type:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 275
    instance-of v2, p1, Lcom/android/vcard/VCardEntry$OrganizationData;

    if-nez v2, :cond_0

    move v2, v4

    .line 279
    :goto_0
    return v2

    .line 278
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move-object v1, v0

    .line 279
    .local v1, organization:Lcom/android/vcard/VCardEntry$OrganizationData;
    iget v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->type:I

    iget v3, v1, Lcom/android/vcard/VCardEntry$OrganizationData;->type:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    iget-boolean v3, v1, Lcom/android/vcard/VCardEntry$OrganizationData;->isPrimary:Z

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
    .line 311
    const-string v0, "type: %d, company: %s, department: %s, title: %s, isPrimary: %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
