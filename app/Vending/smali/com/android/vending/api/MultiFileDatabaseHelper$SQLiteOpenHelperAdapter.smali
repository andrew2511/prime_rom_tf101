.class Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MultiFileDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/MultiFileDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SQLiteOpenHelperAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/api/MultiFileDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/MultiFileDatabaseHelper;)V
    .locals 4
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;->this$0:Lcom/android/vending/api/MultiFileDatabaseHelper;

    .line 32
    invoke-static {p1}, Lcom/android/vending/api/MultiFileDatabaseHelper;->access$000(Lcom/android/vending/api/MultiFileDatabaseHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/vending/api/MultiFileDatabaseHelper;->access$100(Lcom/android/vending/api/MultiFileDatabaseHelper;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/vending/api/MultiFileDatabaseHelper;->access$200(Lcom/android/vending/api/MultiFileDatabaseHelper;)I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;->this$0:Lcom/android/vending/api/MultiFileDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/android/vending/api/MultiFileDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/vending/api/MultiFileDatabaseHelper$SQLiteOpenHelperAdapter;->this$0:Lcom/android/vending/api/MultiFileDatabaseHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/vending/api/MultiFileDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 41
    return-void
.end method
