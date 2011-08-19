.class public Lcom/google/android/apps/books/provider/database/ConfigurationTable;
.super Ljava/lang/Object;
.source "ConfigurationTable.java"


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "config"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static getCreationSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "CREATE TABLE config (key TEXT NOT NULL, value TEXT, UNIQUE (key) ON CONFLICT REPLACE)"

    return-object v0
.end method
