.class Lcom/google/android/googlequicksearchbox/SearchActivity$5;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/SearchActivityView$QueryListener;


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
    .line 158
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$5;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$500(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 161
    return-void
.end method
