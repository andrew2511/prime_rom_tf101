.class public Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;
.super Ljava/lang/Object;
.source "ListEntryViewInflater.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLayoutId:I

.field private final mSpecificEntry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

.field private final mViewType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0
    .parameter "specificEntry"
    .parameter "viewType"
    .parameter "layoutId"
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mSpecificEntry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 57
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mViewType:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mLayoutId:I

    .line 59
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 1
    .parameter "viewType"
    .parameter "layoutId"
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mViewType:Ljava/lang/String;

    .line 44
    iput p2, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mLayoutId:I

    .line 45
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mContext:Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mSpecificEntry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    .line 47
    return-void
.end method


# virtual methods
.method public canCreateView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mSpecificEntry:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInflater()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "entry"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 71
    if-nez p2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 74
    :cond_0
    return-object p2
.end method

.method public getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;
    .locals 1
    .parameter "entry"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mViewType:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;->mViewType:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
