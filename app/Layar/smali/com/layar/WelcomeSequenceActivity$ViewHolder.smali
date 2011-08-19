.class Lcom/layar/WelcomeSequenceActivity$ViewHolder;
.super Ljava/lang/Object;
.source "WelcomeSequenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/WelcomeSequenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/layar/WelcomeSequenceActivity;

.field public title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/layar/WelcomeSequenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/layar/WelcomeSequenceActivity$ViewHolder;->this$0:Lcom/layar/WelcomeSequenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/WelcomeSequenceActivity;Lcom/layar/WelcomeSequenceActivity$ViewHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/layar/WelcomeSequenceActivity$ViewHolder;-><init>(Lcom/layar/WelcomeSequenceActivity;)V

    return-void
.end method
