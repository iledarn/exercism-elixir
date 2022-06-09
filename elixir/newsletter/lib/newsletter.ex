defmodule Newsletter do
  def read_emails(path) do
    case File.read(path) do
      {:ok, body} -> String.split(body)
      {:error, reason} -> reason
    end
  end

  def open_log(path) do
    {:ok, file} = File.open(path, [:write])
    file
  end

  def log_sent_email(pid, email) do
    # Please implement the log_sent_email/2 function
  end

  def close_log(pid) do
    # Please implement the close_log/1 function
  end

  def send_newsletter(emails_path, log_path, send_fun) do
    # Please implement the send_newsletter/3 function
  end
end
