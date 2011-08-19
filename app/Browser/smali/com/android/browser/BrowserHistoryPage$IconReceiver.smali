.class Lcom/android/browser/BrowserHistoryPage$IconReceiver;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/webkit/WebIconDatabase$IconListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;->this$0:Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "url"
    .parameter "icon"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$IconReceiver;->this$0:Lcom/android/browser/BrowserHistoryPage;

    iget-object v0, v0, Lcom/android/browser/BrowserHistoryPage;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->notifyDataSetChanged()V

    .line 91
    return-void
.end method
