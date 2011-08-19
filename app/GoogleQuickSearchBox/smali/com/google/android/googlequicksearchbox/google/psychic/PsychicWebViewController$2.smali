.class Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$2;
.super Ljava/lang/Object;
.source "PsychicWebViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->updateWebView(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

.field final synthetic val$javaScript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$2;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$2;->val$javaScript:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$2;->this$0:Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController$2;->val$javaScript:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;->access$1100(Lcom/google/android/googlequicksearchbox/google/psychic/PsychicWebViewController;Ljava/lang/String;)V

    .line 607
    return-void
.end method
