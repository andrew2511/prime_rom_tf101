.class public Lcom/google/android/finsky/model/ChannelTab;
.super Lcom/google/android/finsky/model/Tab;
.source "ChannelTab.java"


# instance fields
.field private mActionBarTab:Landroid/app/ActionBar$Tab;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "name"
    .parameter "id"
    .parameter "dataUrl"
    .parameter "iconUrl"
    .parameter "actionBarTab"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/model/Tab;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p5, p0, Lcom/google/android/finsky/model/ChannelTab;->mActionBarTab:Landroid/app/ActionBar$Tab;

    .line 31
    return-void
.end method


# virtual methods
.method public getActionBarTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/finsky/model/ChannelTab;->mActionBarTab:Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public setActionBarTab(Landroid/app/ActionBar$Tab;)V
    .locals 0
    .parameter "actionBarTab"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/model/ChannelTab;->mActionBarTab:Landroid/app/ActionBar$Tab;

    .line 38
    return-void
.end method
