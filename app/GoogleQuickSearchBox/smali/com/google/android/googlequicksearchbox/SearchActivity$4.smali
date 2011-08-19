.class Lcom/google/android/googlequicksearchbox/SearchActivity$4;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$SearchClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$4;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchClicked(Ljava/lang/String;I)Z
    .locals 1
    .parameter "query"
    .parameter "method"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$4;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$600(Lcom/google/android/googlequicksearchbox/SearchActivity;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
