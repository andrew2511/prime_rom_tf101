.class public Lcom/android/browser/SuggestionsAdapter$SuggestItem;
.super Ljava/lang/Object;
.source "SuggestionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SuggestionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestItem"
.end annotation


# instance fields
.field public extra:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/browser/SuggestionsAdapter;

.field public title:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/browser/SuggestionsAdapter;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "text"
    .parameter "u"
    .parameter "t"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->this$0:Lcom/android/browser/SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    iput-object p2, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    .line 401
    iput-object p3, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->url:Ljava/lang/String;

    .line 402
    iput p4, p0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    .line 403
    return-void
.end method
