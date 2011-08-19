.class Lcom/google/googlenav/appwidget/traffic/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/appwidget/traffic/b;->a:Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/appwidget/traffic/b;->a:Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->b(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/appwidget/traffic/b;->a:Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;

    invoke-static {v1}, Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;->a(Lcom/google/googlenav/appwidget/traffic/TrafficAppWidgetConfigureActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
