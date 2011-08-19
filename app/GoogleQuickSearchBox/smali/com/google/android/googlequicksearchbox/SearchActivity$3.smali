.class Lcom/google/android/googlequicksearchbox/SearchActivity$3;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/SuggestionLauncher$Listener;


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
    .line 140
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$3;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedQuery(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$3;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$300(Lcom/google/android/googlequicksearchbox/SearchActivity;)Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityView;->setQueryFromUser(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public updateSuggestions()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$3;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$400(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$3;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$500(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 147
    return-void
.end method
