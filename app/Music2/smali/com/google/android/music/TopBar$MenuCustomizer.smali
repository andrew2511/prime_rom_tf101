.class public interface abstract Lcom/google/android/music/TopBar$MenuCustomizer;
.super Ljava/lang/Object;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MenuCustomizer"
.end annotation


# virtual methods
.method public abstract createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
.end method

.method public abstract onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
.end method

.method public abstract prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
.end method
