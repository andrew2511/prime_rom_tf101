.class public Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;
.super Ljava/lang/Object;
.source "DefaultListEntryViewFactory.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;


# instance fields
.field private final mDefaultFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

.field private final mFactories:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mFactories:Ljava/util/LinkedList;

    .line 46
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$Factory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mDefaultFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 47
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$Factory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 48
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$Factory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addSpecialViewFactories(Landroid/content/Context;)V

    .line 50
    return-void
.end method

.method private addSpecialViewFactories(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 53
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_NORMAL:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v2, "separator_normal"

    const v3, 0x7f04000c

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 55
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v2, "separator_start_of_group"

    const v3, 0x7f04000e

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 57
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v2, "separator_within_group"

    const v3, 0x7f04000f

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 59
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_FIRST:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v2, "separator_first"

    const v3, 0x7f04000d

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 61
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;

    sget-object v1, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->DUMMY:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v2, "dummy"

    const/high16 v3, 0x7f04

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;ILandroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 63
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected final addFactory(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public canCreateView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "entry"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 85
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 86
    .local v0, factory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->canCreateView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 90
    .end local v0           #factory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mDefaultFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;
    .locals 3
    .parameter "entry"

    .prologue
    .line 94
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 95
    .local v0, factory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->canCreateView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .end local v0           #factory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mDefaultFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v2, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewTypes()Ljava/util/Collection;
    .locals 4
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
    .line 74
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/HashSet;

    if-nez v2, :cond_0

    .line 75
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/HashSet;

    .line 76
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mDefaultFactory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewTypes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mFactories:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;

    .line 78
    .local v0, factory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/HashSet;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;->getViewTypes()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 81
    .end local v0           #factory:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/HashSet;

    return-object v2
.end method
