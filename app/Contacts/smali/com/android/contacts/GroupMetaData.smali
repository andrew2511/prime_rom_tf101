.class public final Lcom/android/contacts/GroupMetaData;
.super Ljava/lang/Object;
.source "GroupMetaData.java"


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mDefaultGroup:Z

.field private mFavorites:Z

.field private mGroupId:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZ)V
    .locals 0
    .parameter "accountName"
    .parameter "accountType"
    .parameter "groupId"
    .parameter "title"
    .parameter "defaultGroup"
    .parameter "favorites"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/contacts/GroupMetaData;->mAccountName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/contacts/GroupMetaData;->mAccountType:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/android/contacts/GroupMetaData;->mGroupId:J

    .line 35
    iput-object p5, p0, Lcom/android/contacts/GroupMetaData;->mTitle:Ljava/lang/String;

    .line 36
    iput-boolean p6, p0, Lcom/android/contacts/GroupMetaData;->mDefaultGroup:Z

    .line 37
    iput-boolean p7, p0, Lcom/android/contacts/GroupMetaData;->mFavorites:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getGroupId()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/contacts/GroupMetaData;->mGroupId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/contacts/GroupMetaData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultGroup()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/contacts/GroupMetaData;->mDefaultGroup:Z

    return v0
.end method

.method public isFavorites()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/contacts/GroupMetaData;->mFavorites:Z

    return v0
.end method
