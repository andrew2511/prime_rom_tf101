.class public Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemInfo"
.end annotation


# instance fields
.field public mAccountId:J

.field public mContactId:J

.field public mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    .line 139
    iput-wide p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 140
    return-void
.end method
