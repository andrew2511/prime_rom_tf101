.class Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;
.super Ljava/lang/Object;
.source "ContactsSyncAdapter.java"

# interfaces
.implements Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ContactsSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneRow"
.end annotation


# instance fields
.field phone:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

.field type:I


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "_phone"
    .parameter "_type"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;->this$0:Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;->phone:Ljava/lang/String;

    .line 328
    iput p3, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;->type:I

    .line 329
    return-void
.end method


# virtual methods
.method public addValues(Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 332
    const-string v0, "data1"

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 333
    const-string v0, "data2"

    iget v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;

    .line 334
    return-void
.end method

.method public isSameAs(ILjava/lang/String;)Z
    .locals 1
    .parameter "_type"
    .parameter "value"

    .prologue
    .line 337
    iget v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;->type:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;->phone:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
