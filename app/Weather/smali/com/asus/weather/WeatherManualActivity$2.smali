.class Lcom/asus/weather/WeatherManualActivity$2;
.super Ljava/lang/Object;
.source "WeatherManualActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherManualActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherManualActivity;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherManualActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    sget-object v1, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/asus/weather/WeatherManualActivity;->access$100(Lcom/asus/weather/WeatherManualActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    .line 239
    sget-object v0, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    iget-object v0, v0, Lcom/asus/weather/WeatherManualActivity;->ibtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 243
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    iget-object v0, v0, Lcom/asus/weather/WeatherManualActivity;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    iget-object v0, v0, Lcom/asus/weather/WeatherManualActivity;->ibtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$2;->this$0:Lcom/asus/weather/WeatherManualActivity;

    iget-object v0, v0, Lcom/asus/weather/WeatherManualActivity;->iv:Landroid/widget/ImageView;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 254
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 258
    return-void
.end method
