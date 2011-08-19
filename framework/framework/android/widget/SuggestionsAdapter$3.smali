.class Landroid/widget/SuggestionsAdapter$3;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/widget/Filter$Delayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mPreviousLength:I

.field final synthetic this$0:Landroid/widget/SuggestionsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/SuggestionsAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Landroid/widget/SuggestionsAdapter$3;->this$0:Landroid/widget/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SuggestionsAdapter$3;->mPreviousLength:I

    return-void
.end method


# virtual methods
.method public getPostingDelay(Ljava/lang/CharSequence;)J
    .registers 8
    .parameter "constraint"

    .prologue
    const-wide/16 v4, 0x0

    .line 134
    if-nez p1, :cond_6

    move-wide v2, v4

    .line 138
    :goto_5
    return-wide v2

    .line 136
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget v3, p0, Landroid/widget/SuggestionsAdapter$3;->mPreviousLength:I

    if-ge v2, v3, :cond_19

    const-wide/16 v2, 0x1f4

    move-wide v0, v2

    .line 137
    .local v0, delay:J
    :goto_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Landroid/widget/SuggestionsAdapter$3;->mPreviousLength:I

    move-wide v2, v0

    .line 138
    goto :goto_5

    .end local v0           #delay:J
    :cond_19
    move-wide v0, v4

    .line 136
    goto :goto_11
.end method
