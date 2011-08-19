.class Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "InviteFriendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/InviteFriendAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field check:Landroid/widget/CheckBox;

.field item:Lcom/layar/data/user/Friend;

.field text:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/layar/adapters/InviteFriendAdapter$ViewHolder;-><init>()V

    return-void
.end method
