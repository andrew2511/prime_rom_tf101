.class Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;
.super Ljava/lang/Object;
.source "DisambigDialog.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/DisambigDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResultsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataSetObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    .line 203
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mContext:Landroid/content/Context;

    .line 204
    return-void
.end method

.method private notifyDataSetChange()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/DataSetObserver;

    .line 270
    invoke-virtual {p0}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 224
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 228
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    if-eqz p2, :cond_0

    .line 239
    check-cast p2, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;

    .line 240
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-virtual {p2, v0, p0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;->setAction(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    move-object v0, p2

    .line 244
    :goto_0
    return-object v0

    .line 242
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;

    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/voicesearch/actions/VoiceAction;

    invoke-direct {v0, v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter$ResultView;-><init>(Landroid/content/Context;Lcom/google/android/voicesearch/actions/VoiceAction;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method

.method public setResults(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mResults:Ljava/util/ArrayList;

    .line 208
    invoke-direct {p0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->notifyDataSetChange()V

    .line 209
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->mDataSetObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 266
    return-void
.end method
