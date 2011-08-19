.class public Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;
.super Ljava/lang/Object;
.source "Act_VibeMain.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Act_VibeMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VibeTabSelector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_VibeMain;


# direct methods
.method public constructor <init>(Lcom/asus/vibe2/Act_VibeMain;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 4
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 261
    iget-object v3, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-virtual {v3}, Lcom/asus/vibe2/Act_VibeMain;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 262
    .local v1, ft:Landroid/app/FragmentTransaction;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v3}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 263
    iget-object v3, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v3}, Lcom/asus/vibe2/Act_VibeMain;->access$000(Lcom/asus/vibe2/Act_VibeMain;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe2/Frag_TabContent;

    .line 264
    .local v0, fragTab:Lcom/asus/vibe2/Frag_TabContent;
    if-eqz v0, :cond_0

    .line 265
    if-ne v2, p1, :cond_1

    .line 266
    invoke-virtual {v0, v1}, Lcom/asus/vibe2/Frag_TabContent;->onTabSelected(Landroid/app/FragmentTransaction;)V

    .line 262
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {v0, v1}, Lcom/asus/vibe2/Frag_TabContent;->onTabUnselected(Landroid/app/FragmentTransaction;)V

    goto :goto_1

    .line 272
    .end local v0           #fragTab:Lcom/asus/vibe2/Frag_TabContent;
    :cond_2
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 273
    const/4 v3, 0x1

    return v3
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 290
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v1}, Lcom/asus/vibe2/Act_VibeMain;->access$100(Lcom/asus/vibe2/Act_VibeMain;)Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->getItem(I)Lcom/asus/vibe2/Frag_TabContent;

    move-result-object v0

    .line 278
    .local v0, fragTab:Lcom/asus/vibe2/Frag_TabContent;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0, p2}, Lcom/asus/vibe2/Frag_TabContent;->onTabSelected(Landroid/app/FragmentTransaction;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3
    .parameter "tab"
    .parameter "ft"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/asus/vibe2/Act_VibeMain$VibeTabSelector;->this$0:Lcom/asus/vibe2/Act_VibeMain;

    invoke-static {v1}, Lcom/asus/vibe2/Act_VibeMain;->access$100(Lcom/asus/vibe2/Act_VibeMain;)Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asus/vibe2/Act_VibeMain$VibeTabAdapter;->getItem(I)Lcom/asus/vibe2/Frag_TabContent;

    move-result-object v0

    .line 285
    .local v0, fragTab:Lcom/asus/vibe2/Frag_TabContent;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p2}, Lcom/asus/vibe2/Frag_TabContent;->onTabUnselected(Landroid/app/FragmentTransaction;)V

    .line 288
    :cond_0
    return-void
.end method
