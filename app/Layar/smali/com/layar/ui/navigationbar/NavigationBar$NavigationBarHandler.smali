.class public interface abstract Lcom/layar/ui/navigationbar/NavigationBar$NavigationBarHandler;
.super Ljava/lang/Object;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/navigationbar/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NavigationBarHandler"
.end annotation


# virtual methods
.method public abstract onNavigationBarButtonClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z
.end method

.method public abstract onNavigationBarPopupMenuClick(Lcom/layar/ui/navigationbar/NavigationBar;I)Z
.end method

.method public abstract onPrepareNavigationBar(Lcom/layar/ui/navigationbar/NavigationBar;)Z
.end method

.method public abstract onPrepareNavigationBarPopupMenu(Lcom/layar/ui/navigationbar/NavigationBar;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Z
.end method
