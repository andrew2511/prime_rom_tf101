.class public abstract Lcom/android/contacts/model/AccountType;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/model/AccountType$StringInflater;,
        Lcom/android/contacts/model/AccountType$EditField;,
        Lcom/android/contacts/model/AccountType$EventEditType;,
        Lcom/android/contacts/model/AccountType$EditType;,
        Lcom/android/contacts/model/AccountType$DataKind;
    }
.end annotation


# static fields
.field private static sWeightComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accountType:Ljava/lang/String;

.field public iconRes:I

.field private mKinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            ">;"
        }
    .end annotation
.end field

.field private mMimeKinds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            ">;"
        }
    .end annotation
.end field

.field public readOnly:Z

.field public resPackageName:Ljava/lang/String;

.field public summaryResPackageName:Ljava/lang/String;

.field public titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/android/contacts/model/AccountType$1;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountType$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountType;->sWeightComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    .line 76
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    .line 370
    return-void
.end method


# virtual methods
.method public addKind(Lcom/android/contacts/model/AccountType$DataKind;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 2
    .parameter "kind"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->resPackageName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/contacts/model/AccountType$DataKind;->resPackageName:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-object p1
.end method

.method public getCreateContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 110
    iget v1, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 112
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 113
    :cond_0
    iget v1, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    if-eq v1, v2, :cond_1

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 116
    goto :goto_0
.end method

.method public getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 99
    iget v1, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 101
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/contacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 105
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 102
    :cond_0
    iget v1, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    if-eq v1, v2, :cond_1

    .line 103
    iget v1, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    goto :goto_0
.end method

.method public getEditContactActivityClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mMimeKinds:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/AccountType$DataKind;

    return-object p0
.end method

.method public getSortedDataKinds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$DataKind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/model/AccountType;->sWeightComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    iget-object v0, p0, Lcom/android/contacts/model/AccountType;->mKinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
