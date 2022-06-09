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
    IO.binwrite(pid, email <> "\n")
  end

  def close_log(pid) do
    File.close(pid)
  end

  def send_newsletter(emails_path, log_path, send_fun) do
    # Please implement the send_newsletter/3 function
  end
end
