.class Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;
.super Landroid/database/DataSetObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourcesObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/SearchActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 788
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;-><init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 791
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$SourcesObserver;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$500(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 792
    return-void
.end method
